using System;
using Microsoft.AspNetCore.Hosting;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Configuration;

namespace GhGlobal_Web.Controllers
{
    public class HomeController : Controller
    {
        private readonly IConfiguration _configuration;
        private readonly IHostingEnvironment _hostingEnvironment;
        private readonly string JsonFilePath;
        private string ApiUrl;
        private string ImgUrl;

        public int nLanguage;
        public string sLanguage;

        public HomeController(IConfiguration configuration, IHostingEnvironment hostingEnvironment)
        {
            _configuration = configuration;
            _hostingEnvironment = hostingEnvironment;
            JsonFilePath = _hostingEnvironment.WebRootPath + "\\";
            ApiUrl = _configuration.GetSection("ApiUrl:DevUrl").Get<string>();
            ImgUrl = _configuration.GetSection("ApiUrl:ImgUrl").Get<string>();
            //SetApiUrl(ApiUrl.ToString());
        }

        public void SetApiUrl(string sUrl)
        {
            if(HttpContext.Session.GetInt32("ApiUrl") == null)
            {
                HttpContext.Session.SetString("ApiUrl", ApiUrl);
                HttpContext.Session.SetString("ImgUrl", ImgUrl);
            }
                
        }

        // 개인 묻고 답하기 페이지
        public IActionResult ServiceCenter(string sUserID = "", int nGtype = 0, int nLan = 1)
        {
            SetApiUrl(ApiUrl);
            //ViewBag.Referer = Request.Headers["Referer"].ToString();
            ViewBag.Referer = "/Home/ServiceCenterMain?sUserID="+ sUserID+ "&nGtype="+ nGtype+ "&nLan="+ nLan;
            ViewBag.nLan = nLan;
            ViewBag.sUserID = sUserID;
            ViewBag.nGtype = nGtype;
            return View();
        }

        public IActionResult ServiceCenterCUD(Int64 sb_idx, string conType, int nGtype = 0, string sUserID = "", int nLan = 1, int nQtype = 0)
        {
            SetApiUrl(ApiUrl);
            ViewBag.Referer = Request.Headers["Referer"].ToString();
            ViewBag.nLan = nLan;
            ViewBag.sUserID = sUserID;
            ViewBag.nGtype = nGtype;
            ViewBag.nQtype = nQtype;
            ViewBag.sb_idx = sb_idx;
            ViewBag.conType = conType;
            return View();
        }

        public IActionResult ServiceCenterMain(string sUserID, int nGtype = 0, int nLan = 1)
        {
            SetApiUrl(ApiUrl);
            ViewBag.nLan = nLan;
            ViewBag.sUserID = sUserID;
            ViewBag.nGtype = nGtype;

            return View();
        }

        public IActionResult GameGuide(int nGtype = 0, int nLan = 1)
        {
            SetApiUrl(ApiUrl);
            ViewBag.nLan = nLan;
            ViewBag.nGtype = nGtype;
            return View();
        }

        public IActionResult GameGuideKind(int nGtype = 0, int nLan = 1)
        {
            SetApiUrl(ApiUrl);
            ViewBag.nLan = nLan;
            ViewBag.nGtype = nGtype;
            return View();
        }

        public IActionResult GameGuideDetail(int gg_idx, int nGtype = 0, int nLan = 1)
        {
            SetApiUrl(ApiUrl);
            ViewBag.Referer = Request.Headers["Referer"].ToString();
            ViewBag.nLan = nLan;
            ViewBag.nGtype = nGtype;
            ViewBag.gg_idx = gg_idx;
            return View();
        }

        public IActionResult Terms(int nGtype = 0, int nLan = 1)
        {
            SetApiUrl(ApiUrl);
            ViewBag.nLan = nLan;
            ViewBag.nGtype = nGtype;
            return View();
        }
    }
}