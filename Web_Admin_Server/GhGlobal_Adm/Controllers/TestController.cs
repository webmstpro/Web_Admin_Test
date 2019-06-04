using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Hosting;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Configuration;

namespace GhGlobal_Adm.Controllers
{
    public class TestController : Controller
    {
        private readonly IConfiguration _configuration;
        private readonly IHostingEnvironment _hostingEnvironment;
        private string ApiUrl;

        public TestController(IConfiguration configuration, IHostingEnvironment hostingEnvironment)
        {
            _configuration = configuration;
            _hostingEnvironment = hostingEnvironment;
            ApiUrl = _configuration.GetSection("ApiUrl:DevUrl").Get<string>();
            //SetApiUrl(ApiUrl.ToString());
        }

        public IActionResult Index()
        {
            ViewBag.ApiUrl = ApiUrl;
            return View();
        }

        public IActionResult Baccarat()
        {
            ViewBag.ApiUrl = ApiUrl;
            return View();
        }

        public IActionResult BlackJac()
        {
            ViewBag.ApiUrl = ApiUrl;
            return View();
        }

        public IActionResult Roulette()
        {
            ViewBag.ApiUrl = ApiUrl;
            return View();
        }

        public IActionResult MemList()
        {
            ViewBag.ApiUrl = ApiUrl;
            return View();
        }
        public IActionResult MemMultList()
        {
            ViewBag.ApiUrl = ApiUrl;
            return View();
        }

        public IActionResult MemConList()
        {
            ViewBag.ApiUrl = ApiUrl;
            return View();
        }
    }
}

