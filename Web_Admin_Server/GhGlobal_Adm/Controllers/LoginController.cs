using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using GhGlobal_Adm.Cmd;
using Microsoft.AspNetCore.Hosting;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Configuration;

namespace GhGlobal_Adm.Controllers
{
    public class LoginController : Controller
    {
        private readonly IConfiguration _configuration;
        private readonly IHostingEnvironment _hostingEnvironment;
        private string ApiUrl;

        public LoginController(IConfiguration configuration, IHostingEnvironment hostingEnvironment)
        {
            _configuration = configuration;
            _hostingEnvironment = hostingEnvironment;
            ApiUrl = _configuration.GetSection("ApiUrl:DevUrl").Get<string>();
        }

        [SessionAdminTimein]
        public IActionResult Index()
        {
            ViewBag.ApiUrl = ApiUrl;
            return View();
        }
    }
}