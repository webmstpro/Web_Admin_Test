using System;
using System.Collections;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Linq;
using System.Net.Http;
using System.Net.Http.Headers;
using Dapper;
using GhGlobal_Adm.Cmd;
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
        private static string _StrConn;

        public CmdController(IConfiguration configuration, IHostingEnvironment hostingEnvironment)
        {
            _configuration = configuration;
            _hostingEnvironment = hostingEnvironment;
            JsonFilePath = _hostingEnvironment.WebRootPath + "\\";
            JsonApiUrl = configuration.GetSection("ApiUrl:DevUrl").Get<string>();
            _FilesExts = _configuration.GetSection("FileUpload:ManageFileExt").Get<List<string>>();
            _StrConn = configuration.GetConnectionString("DevConnection");
        }

        [HttpPost]
        public JsonResult SetAdLogin(Models.Man.adMember mParams)
        {
            Hashtable jsonReturn = new Hashtable();
            DynamicParameters param = new DynamicParameters();
            param.Add("@ad_id", mParams.ad_id);
            param.Add("@ad_pw", mParams.ad_pw);
            param.Add("@ad_ip", mParams.ad_ip);
            param.Add("@rCnt", -1, DbType.Int16, ParameterDirection.Output);
            param.Add("@rVal", "", DbType.String, ParameterDirection.Output);
            var DataResult = DapperORM.ReturnList<dynamic>("WSP_ADMEMBER_LOGIN", param, _StrConn);

            if(DataResult.Count() > 0)
            {
                HttpContext.Session.SetInt32("ad_idx", (Int32)DataResult.First().ad_idx);
                HttpContext.Session.SetString("ad_id", mParams.ad_id);
                HttpContext.Session.SetString("ad_name", (string)DataResult.First().ad_name);
                HttpContext.Session.SetInt32("ad_level", (int)DataResult.First().ad_level);
                HttpContext.Session.SetInt32("ad_use", (int)DataResult.First().ad_use);

                jsonReturn.Add("rCnt", param.Get<Int16>("@rCnt"));
                jsonReturn.Add("rVal", param.Get<string>("@rVal"));
            }
            else
            {
                jsonReturn.Add("rCnt", 1);
                jsonReturn.Add("rVal", "아이디 및 비밀번호가 일치하지 않아 로그인에 실패했습니다.");
            }

            return Json(DataResult);
        }

        [HttpPost]
        public JsonResult GetCardList(int gNum)
        {
            DynamicParameters param = new DynamicParameters();
            param.Add("@GameKind", gNum);
            var DataResult = DapperORM.ReturnList<dynamic>("WSP_TEST_GameCardSetting_List", param, _StrConn);
            var UserList = new List<Models.Cards>();

            if (DataResult.Count() > 0)
            {
                var GameKind = DataResult.First().GameKind;
                var Rand = DataResult.First().Rand;
                var Card = DataResult.First().Card;
                var userCard = DataResult.First().UserCard;

                try
                {
                    var CardArry = Card.Split(",");
                    var userCardArry = userCard.Split(",");

                    if (gNum == 4)
                    {
                        for (var i = 0; i < userCardArry.Length; i++)
                        {
                            UserList.Add(new Models.Cards()
                            {
                                GameKind = GameKind,
                                Rand = Rand,
                                Card = userCardArry[i],
                                UserCard = userCardArry[i]
                            });
                        }
                    }
                    else
                    {
                        for (var i = 0; i < userCardArry.Length; i++)
                        {
                            UserList.Add(new Models.Cards()
                            {
                                GameKind = GameKind,
                                Rand = Rand,
                                Card = (CardArry.Length > i) ? CardArry[i] : "0",
                                UserCard = userCardArry[i]
                            });
                        }
                    }

                }
                catch (Exception e)
                {
                    var ss = e.Message;
                }

            }

            return Json(UserList);
        }

        [HttpPost]
        public JsonResult SetHoldem(IFormCollection form)
        {
            Hashtable jsonReturn = new Hashtable();

            //var User = HttpContext.Request.Form["User"];
            //var gNum = HttpContext.Request.Form["gNum"];

            var gNum = Convert.ToInt16(form["gNum"]);
            var Rand = Convert.ToInt16(form["Rand"]);
            var Card = form["User"].ToString();
            var User = "";

            foreach (var item in form["User"].Select((value, index) => new { Value = value, Index = index }))
            {
                User += (item.Index == (form["User"].Count - 1)) ? Convert.ToString(item.Index) : Convert.ToString(item.Index) + ",";
            }

            DynamicParameters param = new DynamicParameters();
            param.Add("@GameKind", gNum);
            param.Add("@Rand", Rand);
            param.Add("@Card", Card);
            param.Add("@UserCard", User);
            param.Add("@UserIP", HttpContext.Connection.RemoteIpAddress.ToString());
            param.Add("@rCnt", 0, DbType.Int16, ParameterDirection.Output);
            param.Add("@rVal", "", DbType.String, ParameterDirection.Output);
            var DataResult = DapperORM.ReturnList<dynamic>("WSP_TEST_GameCardSetting", param, _StrConn);

            jsonReturn.Add("rCnt", param.Get<Int16>("@rCnt"));
            jsonReturn.Add("rVal", param.Get<string>("@rVal"));

            return Json(jsonReturn);
        }

        public JsonResult SetMemDel(Models.Man.spMemParam02 jsonObject)
        {
            jsonObject.ad_ip = HttpContext.Connection.RemoteIpAddress.ToString();
            jsonObject.ad_idx = Convert.ToInt32(HttpContext.Session.GetInt32("ad_idx"));
            var objJsonReturn = objHttpClient("/Manage/SetMemDel", jsonObject);

            return Json(objJsonReturn.Value);
        }

        [HttpPost]
        public JsonResult SetGameGuideCUD(Models.Man.sGameGuide jsonObject)
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

        [HttpPost]
        public JsonResult SetBaccarat(IFormCollection form)
        {
            Hashtable jsonReturn = new Hashtable();

            var gNum = Convert.ToInt16(form["gNum"]);
            var Rand = Convert.ToInt16(form["Rand"]);
            //var Card = form["User"].ToString();
            //var User = "0,1,2,3,4,5";
            var Card = "";
            var User = "";

            Card += form["User_0"].ToString();
            Card += "," + form["User_1"].ToString();
            Card += "," + form["User_2"].ToString();
            Card += "," + form["User_3"].ToString();
            if (form["User_4"].ToString() != "0")
                Card += "," + form["User_4"].ToString();
            if (form["User_5"].ToString() != "0")
                Card += "," + form["User_5"].ToString();


            User += form["User_0"].ToString();
            User += "," + form["User_1"].ToString();
            User += "," + form["User_2"].ToString();
            User += "," + form["User_3"].ToString();
            User += "," + form["User_4"].ToString();
            User += "," + form["User_5"].ToString();


            DynamicParameters param = new DynamicParameters();
            param.Add("@GameKind", gNum);
            param.Add("@Rand", Rand);
            param.Add("@Card", Card);
            param.Add("@UserCard", User);
            param.Add("@UserIP", HttpContext.Connection.RemoteIpAddress.ToString());
            param.Add("@rCnt", 0, DbType.Int16, ParameterDirection.Output);
            param.Add("@rVal", "", DbType.String, ParameterDirection.Output);
            var DataResult = DapperORM.ReturnList<dynamic>("WSP_TEST_GameCardSetting", param, _StrConn);

            jsonReturn.Add("rCnt", param.Get<Int16>("@rCnt"));
            jsonReturn.Add("rVal", param.Get<string>("@rVal"));

            return Json(jsonReturn);
        }

        [HttpPost]
        public JsonResult SetRoulette(IFormCollection form)
        {
            Hashtable jsonReturn = new Hashtable();

            var gNum = Convert.ToInt16(form["gNum"]);
            var Rand = Convert.ToInt16(form["Rand"]);
            //var Card = form["User"].ToString();
            //var User = "0,1,2,3,4,5";
            var Card = form["User"].ToString();
            var User = form["UserColor"].ToString();

            DynamicParameters param = new DynamicParameters();
            param.Add("@GameKind", gNum);
            param.Add("@Rand", Rand);
            param.Add("@Card", Card);
            param.Add("@UserCard", User);
            param.Add("@UserIP", HttpContext.Connection.RemoteIpAddress.ToString());
            param.Add("@rCnt", 0, DbType.Int16, ParameterDirection.Output);
            param.Add("@rVal", "", DbType.String, ParameterDirection.Output);
            var DataResult = DapperORM.ReturnList<dynamic>("WSP_TEST_GameCardSetting", param, _StrConn);

            jsonReturn.Add("rCnt", param.Get<Int16>("@rCnt"));
            jsonReturn.Add("rVal", param.Get<string>("@rVal"));

            return Json(jsonReturn);
        }


        [HttpPost]
        public JsonResult SetBlackJac(IFormCollection form)
        {
            Hashtable jsonReturn = new Hashtable();

            var gNum = Convert.ToInt16(form["gNum"]);
            var Rand = Convert.ToInt16(form["Rand"]);

            var Card = "";
            var CardMain = "";
            var User = "";

            var CardArry = form["User"].ToString().Split(",");

            foreach (var item in CardArry.Select((value, index) => new { Value = value, Index = index }))
            {
                var mainCheck = item.Index % 12;

                if (mainCheck <= 1)
                {
                    if (item.Value != "0")
                    {
                        if (CardMain == "")
                            CardMain += item.Value;
                        else
                            CardMain += "," + item.Value;
                    }
                }
                else
                {
                    if (item.Value != "0")
                        Card += "," + item.Value;
                }

                if (User == "")
                    User += item.Value;
                else
                    User += "," + item.Value;
            }

            DynamicParameters param = new DynamicParameters();
            param.Add("@GameKind", gNum);
            param.Add("@Rand", Rand);
            param.Add("@Card", CardMain + Card);
            param.Add("@UserCard", User);
            param.Add("@UserIP", HttpContext.Connection.RemoteIpAddress.ToString());
            param.Add("@rCnt", 0, DbType.Int16, ParameterDirection.Output);
            param.Add("@rVal", "", DbType.String, ParameterDirection.Output);
            var DataResult = DapperORM.ReturnList<dynamic>("WSP_TEST_GameCardSetting", param, _StrConn);

            jsonReturn.Add("rCnt", param.Get<Int16>("@rCnt"));
            jsonReturn.Add("rVal", param.Get<string>("@rVal"));

            return Json(jsonReturn);
        }

        [HttpPost]
        public JsonResult GetMemList(Models.Man.spMemParam01 mParams)
        {
            DynamicParameters param = new DynamicParameters();
            param.Add("@lan_idx", mParams.lan_idx);
            param.Add("@PageSize", mParams.PageSize);
            param.Add("@PageNo", mParams.PageNo);
            param.Add("@sKey", mParams.sKey);
            param.Add("@sVal", mParams.sVal);
            param.Add("@rCnt", 0, DbType.Int16, ParameterDirection.Output);
            var DataResult = DapperORM.ReturnList<dynamic>("WSP_TEST_MEMBER_LIST", param, _StrConn);
            var retuData = new Tuple<dynamic, int>(DataResult, param.Get<Int16>("@rCnt"));
            return Json(retuData);
        }

        // 머니가 많을 경우
        [HttpPost]
        public JsonResult SetMemMoneyMultiChange(Models.Man.gMemberMulti mParams)
        {
            Hashtable jsonReturn = new Hashtable();
            DynamicParameters param = new DynamicParameters();
            param.Add("@UserIdx", mParams.UserIdx);
            param.Add("@Money1", mParams.Money1);
            param.Add("@Money2", mParams.Money2);
            param.Add("@Money3", mParams.Money3);
            param.Add("@Money4", mParams.Money4);
            param.Add("@Money5", mParams.Money5);
            param.Add("@rCnt", -1, DbType.Int16, ParameterDirection.Output);
            param.Add("@rVal", "", DbType.String, ParameterDirection.Output);
            var DataResult = DapperORM.ReturnList<dynamic>("WSP_TEST_MEMBER_MULTI5_MONEY_UPDATE", param, _StrConn);

            jsonReturn.Add("rCnt", param.Get<Int16>("@rCnt"));
            jsonReturn.Add("rVal", param.Get<string>("@rVal"));

            return Json(jsonReturn);
        }

        // 머니가 하나일 경우
        public JsonResult SetMemMoneyOneChange(Models.Man.gMember mParams)
        {
            Hashtable jsonReturn = new Hashtable();
            DynamicParameters param = new DynamicParameters();
            param.Add("@UserIdx", mParams.UserIdx);
            param.Add("@Money", mParams.Money);
            param.Add("@rCnt", -1, DbType.Int16, ParameterDirection.Output);
            param.Add("@rVal", "", DbType.String, ParameterDirection.Output);
            var DataResult = DapperORM.ReturnList<dynamic>("WSP_MEMBER_MONEY_UPDATE", param, _StrConn);

            jsonReturn.Add("rCnt", param.Get<Int16>("@rCnt"));
            jsonReturn.Add("rVal", param.Get<string>("@rVal"));

            return Json(jsonReturn);
        }


        [HttpPost]
        public JsonResult GetMemConList(Models.Man.spMemParam01 mParams)
        {
            DynamicParameters param = new DynamicParameters();
            param.Add("@lan_idx", mParams.lan_idx);
            param.Add("@PageSize", mParams.PageSize);
            param.Add("@PageNo", mParams.PageNo);
            param.Add("@sKey", mParams.sKey);
            param.Add("@sVal", mParams.sVal);
            param.Add("@rCnt", 0, DbType.Int16, ParameterDirection.Output);
            var DataResult = DapperORM.ReturnList<dynamic>("WSP_MEMBER_CON_LIST", param, _StrConn);
            var retuData = new Tuple<dynamic, int>(DataResult, param.Get<Int16>("@rCnt"));
            return Json(retuData);
        }

        [HttpPost]
        public JsonResult SetMemConDel(Models.Man.gMember mParams)
        {
            Hashtable jsonReturn = new Hashtable();
            DynamicParameters param = new DynamicParameters();
            param.Add("@UserIdx", mParams.UserIdx);
            param.Add("@rCnt", -1, DbType.Int16, ParameterDirection.Output);
            param.Add("@rVal", "", DbType.String, ParameterDirection.Output);
            var DataResult = DapperORM.ReturnList<dynamic>("WSP_MEMBER_CON_DELETE", param, _StrConn);
            jsonReturn.Add("rCnt", param.Get<Int16>("@rCnt"));
            jsonReturn.Add("rVal", param.Get<string>("@rVal"));
            return Json(jsonReturn);
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