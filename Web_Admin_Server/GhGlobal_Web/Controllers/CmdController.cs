using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Net.Http.Formatting;
using System.Net.Http.Headers;
using System.Text;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Hosting;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Configuration;
using Newtonsoft.Json;
using Newtonsoft.Json.Linq;

namespace GhGlobal_Web.Controllers
{
    public class CmdController : Controller
    {
        private readonly IConfiguration _configuration;
        private readonly IHostingEnvironment _hostingEnvironment;
        private readonly string JsonFilePath;
        private static string JsonApiUrl;
        public string sLanguage;

        public CmdController(IConfiguration configuration, IHostingEnvironment hostingEnvironment)
        {
            _configuration = configuration;
            _hostingEnvironment = hostingEnvironment;
            JsonFilePath = _hostingEnvironment.WebRootPath + "\\";
            JsonApiUrl = configuration.GetSection("ApiUrl:DevUrl").Get<string>();
            //var RootPath = _appEnvironment.WebRootPath + "\\" + ServerClubfileUrl + "\\" + strBaseDirTemp;
        }

        // JsonData 파일에서 얻어오기
        public JsonResult GetJsonRead(string filePath, string fileName, int nLan)
        {
            SetLanguage(nLan);
            var file = System.IO.File.ReadAllText(JsonFilePath + filePath + "\\" + fileName, Encoding.Default);
            try
            {
                //var parseJson = JObject.Parse(file);  // 단일 일때
                JArray jsonArray = JArray.Parse(file);  // 배열 일때

                foreach (var item in jsonArray)
                {
                    if (sLanguage == item["Language"].ToString())
                    {
                        JArray jsonArray1 = JArray.Parse(item["data"].ToString());
                        return Json(jsonArray1);
                    }
                }
            }
            catch (Exception e)
            {
                return Json(e.Message);
            }

            return Json("데이터가 존재하지 않습니다.");
        }

        // 금칙어 읽어 들이기
        public string GetSlang()
        {
            var string_Slang = System.IO.File.ReadAllText(JsonFilePath + "js\\string_Slang_Eng.txt", Encoding.Default);
            return string_Slang;
        }

        //public async Task<JsonResult> SetLogin(Models.Login.USP_MEMBER_INSERT jsonObject)
        // 로그인
        //public JsonResult SetLogin(Models.Login.USP_MEMBER_INSERT jsonObject)
        public JsonResult SetLogin(GhGlobal_Models.User.Login.USP_MEMBER_INSERT jsonObject)
        {
            var objJsonReturn = objHttpClient("/Home/SetMemberLogin", jsonObject);
            return Json(objJsonReturn.Value);
        }

        // 아이디 체크
        public JsonResult GetUserIdCheck(GhGlobal_Models.User.Login.USP_MEMBER_INSERT jsonObject)
        {
            var objJsonReturn = objHttpClient("/Home/GetUserIdCheck", jsonObject);
            return Json(objJsonReturn.Value);
        }

        // 회원가입
        public JsonResult SetJoin(GhGlobal_Models.User.Login.USP_MEMBER_INSERT jsonObject)
        {
            var objJsonReturn = objHttpClient("/Home/SetMemberInsert", jsonObject);
            return Json(objJsonReturn.Value);
        }

        // 비밀번호 찾기
        public JsonResult SetPwFind(GhGlobal_Models.User.Login.USP_MEMBER_INSERT jsonObject)
        {
            var objJsonReturn = objHttpClient("/Home/SetUserPwdFind", jsonObject);
            return Json(objJsonReturn.Value);
        }

        // 고객센터 본인 리스트 읽어 보기
        public JsonResult GetServiceCenter(GhGlobal_Models.User.ServiceCenter.USP_ServiceCenter_List jsonObject)
        {
            var objJsonReturn = objHttpClient("/Home/GetServiceCenter", jsonObject);
            return Json(objJsonReturn.Value);
        }

        // 고객센터 CUD 
        public JsonResult SetServiceCenterCUD(GhGlobal_Models.User.ServiceCenter.USP_ServiceCenter_Insert jsonObject)
        {
            var objJsonReturn = objHttpClient("/Home/SetServiceCenterCUD", jsonObject);
            return Json(objJsonReturn.Value);
        }

        // 문의 분류 목록
        public JsonResult GetQuestionType(GhGlobal_Models.User.Default.USP_Default jsonObject)
        {
            var objJsonReturn = objHttpClient("/Home/GetQuestionType", jsonObject);
            return Json(objJsonReturn.Value);
        }

        // 언어 설정
        public void SetLanguage(int nLan)
        {
            if (nLan == 1)
                sLanguage = "KOR";
            else if (nLan == 2)
                sLanguage = "USA";
            else if (nLan == 3)
                sLanguage = "CHN";
            else if (nLan == 4)
                sLanguage = "JPN";
        }

        // HttpClient
        public JsonResult objHttpClient(string sUrl, dynamic jsonObject)
        {
            //string url = JsonApiUrl + "/Home/SetMemberLogin";
            string url = JsonApiUrl + sUrl;


            HttpClient client1 = new HttpClient();
            client1.BaseAddress = new Uri(url);

            // JSON 형식에 대한 Accept 헤더를 추가합니다.
            client1.DefaultRequestHeaders.Accept.Add(new MediaTypeWithQualityHeaderValue("application/json"));

            // 파라메터 값을 JSON으로 만들기 위해서 JSON 포멧터를 생성합니다.
            //MediaTypeFormatter jsonFormatter = new JsonMediaTypeFormatter();

            // 요청 본문의 컨텐트를 생성하기 위해 JSON 포멧터를 사용합니다.
            // 정상적인 방법으로 가질 않음
            //HttpContent content = new ObjectContent<Models.Login.USP_MEMBER_INSERT>(jsonObject, jsonFormatter);

            // Model을 Json String로 만들기
            var strParams = JsonConvert.SerializeObject(jsonObject);

            // Json String를 Json 데이터로 만들기
            //dynamic s = JsonConvert.DeserializeObject<dynamic>(strParams);
            var jsonParams = JObject.Parse(strParams);

            // HttpClient로 보낼 Paramater 만들기
            var contentData = new Dictionary<string, string>();
            foreach (var item in jsonParams)
            {
                var s1 = item.Name;
                var s2 = item.First.ToString();
                //contentData.Add(item.Key, item.Value.ToString());
                contentData.Add(item.Name, item.First.ToString());
            }

            var content = new FormUrlEncodedContent(contentData);

            /*
            var content1 = new FormUrlEncodedContent(new[]
            {
                new KeyValuePair<string, string>("lan_idx", lan_idx.ToString()),
                new KeyValuePair<string, string>("UserID", jsonObject.UserID),
                new KeyValuePair<string, string>("PassWD", jsonObject.PassWD),
                new KeyValuePair<string, string>("Social", jsonObject.Social.ToString())

            });
            */

            // 모든 제품들의 목록.
            // GET 방식
            //HttpResponseMessage response = client1.GetAsync("/Home/SetMemberLogin?lan_idx=1&UserID=test1&PassWD=12345&Social=4").Result;  // 호출 블록킹!
            // POST 방식
            //HttpResponseMessage response = client1.PostAsync("/Home/SetMemberLogin", content).Result;  // 호출 블록킹!
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
    }
}