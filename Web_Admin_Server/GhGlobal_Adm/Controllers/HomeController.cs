using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using GhGlobal_Adm.Models;
using GhGlobal_Adm.Cmd;
using Microsoft.Extensions.Configuration;
using Microsoft.AspNetCore.Hosting;
using Microsoft.AspNetCore.Http;

namespace GhGlobal_Adm.Controllers
{
    [SessionTimeout]
    public class HomeController : Controller
    {
        private readonly IConfiguration _configuration;
        private readonly IHostingEnvironment _hostingEnvironment;
        private readonly string JsonFilePath;
        private string ApiUrl;

        public HomeController(IConfiguration configuration, IHostingEnvironment hostingEnvironment)
        {
            _configuration = configuration;
            _hostingEnvironment = hostingEnvironment;
            JsonFilePath = _hostingEnvironment.WebRootPath + "\\";
            ApiUrl = _configuration.GetSection("ApiUrl:DevUrl").Get<string>();
        }

        public IActionResult Index()
        {
            ViewBag.ApiUrl = ApiUrl;
            return View();
        }

        public IActionResult Notice()
        {
            ViewBag.ApiUrl = ApiUrl;
            return View();
        }

        public IActionResult Member()
        {
            ViewBag.ApiUrl = ApiUrl;
            return View();
        }

        public IActionResult Faq()
        {
            ViewBag.ApiUrl = ApiUrl;
            return View();
        }

        public IActionResult Qna()
        {
            ViewBag.ApiUrl = ApiUrl;
            return View();
        }

        public IActionResult GameGuide()
        {
            ViewBag.ApiUrl = ApiUrl;
            return View();
        }

        public IActionResult Term()
        {
            ViewBag.ad_idx = HttpContext.Session.GetInt32("ad_idx");
            ViewBag.ad_ip = HttpContext.Connection.RemoteIpAddress.ToString();
            ViewBag.ApiUrl = ApiUrl;
            return View();
        }

        public IActionResult MemCon()
        {
            ViewBag.ApiUrl = ApiUrl;
            return View();
        }

        public IActionResult GameNotice()
        {
            ViewBag.ad_idx = HttpContext.Session.GetInt32("ad_idx");
            ViewBag.ad_ip = HttpContext.Connection.RemoteIpAddress.ToString();
            ViewBag.ApiUrl = ApiUrl;
            return View();
        }

        public IActionResult PlayCoinShop()
        {
            ViewBag.ApiUrl = ApiUrl;
            return View();
        }

        public IActionResult PlayCoinLog()
        {
            ViewBag.ApiUrl = ApiUrl;
            return View();
        }

        public IActionResult GameSetting()
        {
            ViewBag.ad_idx = HttpContext.Session.GetInt32("ad_idx");
            ViewBag.ad_ip = HttpContext.Connection.RemoteIpAddress.ToString();
            ViewBag.ApiUrl = ApiUrl;
            return View();
        }

        // 홀덤 게임 로그
        public IActionResult GameLog1(int gType=1)
        {
            ViewBag.ApiUrl = ApiUrl;
            ViewBag.gType = gType;
            return View();
        }

        public IActionResult LogOut()
        {
            HttpContext.Session.Clear();
            return RedirectToAction("Index", "Login");
        }

        [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
        public IActionResult Error()
        {
            return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
        }
    }
}
