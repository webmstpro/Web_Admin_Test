using System;
using System.Collections;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Net.Http;
using System.Net.Http.Headers;
using Microsoft.AspNetCore.Hosting;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Configuration;
using Newtonsoft.Json;
using Newtonsoft.Json.Linq;

namespace GhGlobal_Adm.Controllers
{
    public class CmdController : Controller
    {
        private readonly IConfiguration _configuration;
        private readonly IHostingEnvironment _hostingEnvironment;
        private readonly string JsonFilePath;
        private static string JsonApiUrl;
        public string sLanguage;
        private static List<string> _FilesExts;

        public CmdController(IConfiguration configuration, IHostingEnvironment hostingEnvironment)
        {
            _configuration = configuration;
            _hostingEnvironment = hostingEnvironment;
            JsonFilePath = _hostingEnvironment.WebRootPath + "\\";
            JsonApiUrl = configuration.GetSection("ApiUrl:DevUrl").Get<string>();
            _FilesExts = _configuration.GetSection("FileUpload:ManageFileExt").Get<List<string>>();
            //userIP = httpContextAccessor.HttpContext.Connection.RemoteIpAddress.ToString();
            //userIP = HttpContext.Connection.RemoteIpAddress.ToString();
            //var RootPath = _appEnvironment.WebRootPath + "\\" + ServerClubfileUrl + "\\" + strBaseDirTemp;
        }

        public JsonResult SetAdLogin(GhGlobal_Models.Manage.Man.adMember jsonObject)
        {
            Hashtable jsonReturn = new Hashtable();
            jsonObject.ad_ip = HttpContext.Connection.RemoteIpAddress.ToString();

            var objJsonReturn = objHttpClient("/Manage/SetAdLogin", jsonObject);
            //var JsonLoginCheck = JObject.Parse(objJsonReturn.Value.ToString());
            var JsonLoginCheck = JArray.Parse(objJsonReturn.Value.ToString());

            if (JsonLoginCheck.Count > 0)
            {
                HttpContext.Session.SetInt32("ad_idx", (int)JsonLoginCheck.First["ad_idx"]);
                HttpContext.Session.SetString("ad_id", jsonObject.ad_id);
                HttpContext.Session.SetString("ad_name", (string)JsonLoginCheck.First["ad_name"]);
                HttpContext.Session.SetInt32("ad_level", (int)JsonLoginCheck.First["ad_level"]);
                HttpContext.Session.SetInt32("ad_use", (int)JsonLoginCheck.First["ad_use"]);

                jsonReturn.Add("rCnt", 0);
                jsonReturn.Add("rVal", (string)JsonLoginCheck.First["ad_name"] + "님 로그인 성공");
            }
            else
            {
                jsonReturn.Add("rCnt", -1);
                jsonReturn.Add("rVal", "아이디 및 비밀번호가 일치하지 않아 로그인에 실패했습니다.");
            }

            return Json(jsonReturn);
        }

        public JsonResult SetMemDel(GhGlobal_Models.Manage.Man.spMemParam02 jsonObject)
        {
            jsonObject.ad_ip = HttpContext.Connection.RemoteIpAddress.ToString();
            jsonObject.ad_idx = Convert.ToInt32(HttpContext.Session.GetInt32("ad_idx"));
            var objJsonReturn = objHttpClient("/Manage/SetMemDel", jsonObject);

            return Json(objJsonReturn.Value);
        }

        [HttpPost]
        public JsonResult SetGameGuideCUD(GhGlobal_Models.Manage.Man.sGameGuide jsonObject)
        {
            Hashtable jsonReturn = new Hashtable();
            // 파일 체크 Start
            var files = Request.Form.Files;
            // 파일이 존재하지 않음
            if (files.Count != 0)
            {
                // 파일에 대한 폼체크를 먼저한다.
                foreach (var file in files)
                {
                    // 파일 확장자
                    var fileExt = System.IO.Path.GetExtension(file.FileName).Substring(1);
                    if (!_FilesExts.Contains(fileExt.ToLower()))
                    {
                        jsonReturn.Add("rCnt", -1);
                        jsonReturn.Add("rVal", "파일은 이미지파일만 가능합니다.");
                        return Json(jsonReturn);
                    }
                }

                // 파일 폼체크가 완료되면 해당 파일을 업로드하면서 데이터에 Insert
                foreach (var file in files.Select((value, index) => new { Value = value, Index = index }))
                {
                    var filename = this.GetFileNameWithNumbering("UserInfo", file.Value.FileName, jsonObject.gg_Gtype.ToString());
                    // Model Import

                    if(jsonObject.gg_file1 == null)
                    {
                        jsonObject.gg_file2 = filename;
                    }
                    else
                    {
                        if (file.Index == 0)
                            jsonObject.gg_file1 = filename;
                        else
                            jsonObject.gg_file2 = filename;
                    }
                    

                    filename = this.GetPathAndFilename(filename, "GameGuid");
                    var path = Path.Combine(Directory.GetCurrentDirectory(), "wwwroot", filename);

                    // 파일 저장
                    using (FileStream fs = System.IO.File.Create(filename))
                    {
                        file.Value.CopyTo(fs);
                        //await file.Value.CopyToAsync(fs);
                        fs.Flush();
                    }
                }
            }

            var objJsonReturn = objHttpClient("/Manage/SetGameGuideCUD", jsonObject);
            return Json(objJsonReturn.Value);
        }


        // HttpClient
        public JsonResult objHttpClient(string sUrl, dynamic jsonObject)
        {
            string url = JsonApiUrl + sUrl;

            HttpClient client1 = new HttpClient();
            client1.BaseAddress = new Uri(url);

            client1.DefaultRequestHeaders.Accept.Add(new MediaTypeWithQualityHeaderValue("application/json"));

            // Model을 Json String로 만들기
            var strParams = JsonConvert.SerializeObject(jsonObject);

            // Json String를 Json 데이터로 만들기
            var jsonParams = JObject.Parse(strParams);

            // HttpClient로 보낼 Paramater 만들기
            var contentData = new Dictionary<string, string>();
            foreach (var item in jsonParams)
            {
                contentData.Add(item.Name, item.First.ToString());
            }
            var content = new FormUrlEncodedContent(contentData);

            HttpResponseMessage response = client1.PostAsync(sUrl, content).Result;  // 호출 블록킹!
            if (response.IsSuccessStatusCode)
            {
                // 응답 본문 파싱. 블록킹!
                var returnJson = response.Content.ReadAsAsync<dynamic>().Result;
                return Json(returnJson);
            }
            else
            {
                //Console.WriteLine("{0} ({1})", (int)response.StatusCode, response.ReasonPhrase);
                return Json((int)response.StatusCode);
            }

        }

        /// 파일 경로까지 가져오기
        private string GetPathAndFilename(string filename, string filePath = "")
        {
            return _hostingEnvironment.WebRootPath + "\\UpFiles\\" + filePath + "\\" + filename;
        }

        /// 유니크파일명 체크 및 파일명 변경
        private string GetFileNameWithNumbering(string strBaseDirTemp, string strFileNameTemp, string strUserKey = "")
        {

            var RootPath = _hostingEnvironment.WebRootPath + "\\UpFiles\\" + strBaseDirTemp;
            string strName = Path.GetFileNameWithoutExtension(strFileNameTemp);
            string strExt = Path.GetExtension(strFileNameTemp);

            bool blnExists = true;
            int i = 0;

            if (!Directory.Exists(RootPath))
            {
                Directory.CreateDirectory(RootPath);
            }

            while (blnExists)
            {
                strFileNameTemp = DateTime.Now.ToString("yyyyMMddHHmmssfff") + strUserKey + strExt;
                if (System.IO.File.Exists(Path.Combine(strBaseDirTemp, strFileNameTemp)))
                {
                    strFileNameTemp =
                        DateTime.Now.ToString("yyyyMMddHHmmssfff") + strUserKey + "(" + ++i + ")" + strExt;
                }
                else
                {
                    blnExists = false;
                    strFileNameTemp = DateTime.Now.ToString("yyyyMMddHHmmssfff") + strUserKey + strExt;
                }
            }
            return strFileNameTemp;
        }
    }
}