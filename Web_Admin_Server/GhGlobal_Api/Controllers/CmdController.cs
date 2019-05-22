using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Hosting;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Configuration;
using Newtonsoft.Json.Linq;

namespace GhGlobal_Api.Controllers
{
    public class CmdController : Controller
    {
        private readonly IConfiguration _configuration;
        private readonly IHostingEnvironment _hostingEnvironment;
        private static string _StrConn;
        private readonly string _RootPath;
        private string _sLanguage;

        public CmdController(IConfiguration configuration, IHostingEnvironment hostingEnvironment)
        {
            _configuration = configuration;
            _hostingEnvironment = hostingEnvironment;
            _StrConn = configuration.GetConnectionString("DevConnection");
            _RootPath = _hostingEnvironment.WebRootPath + "\\";
        }

        // JsonData 파일에서 얻어오기
        public JsonResult GetJsonRead(string filePath, string fileName, int nLan)
        {
            SetLanguage(nLan);
            var file = System.IO.File.ReadAllText(_RootPath + filePath + "\\" + fileName, Encoding.Default);
            try
            {
                //var parseJson = JObject.Parse(file);  // 단일 일때
                JArray jsonArray = JArray.Parse(file);  // 배열 일때

                foreach (var item in jsonArray)
                {
                    if (_sLanguage == item["Language"].ToString())
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

        // 언어 설정
        public void SetLanguage(int nLan)
        {
            if (nLan == 1)
                _sLanguage = "KOR";
            else if (nLan == 2)
                _sLanguage = "USA";
            else if (nLan == 3)
                _sLanguage = "CHN";
            else if (nLan == 4)
                _sLanguage = "JPN";
        }
    }
}