using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Hosting;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Configuration;
using Newtonsoft.Json;
using Newtonsoft.Json.Linq;
using GhGlobal_Web.Models;
using Microsoft.AspNetCore.Http;

namespace GhGlobal_Web.Controllers
{
    public class LoginController : Controller
    {
        private readonly IConfiguration _configuration;
        private readonly IHostingEnvironment _hostingEnvironment;
        private readonly IHttpContextAccessor _accessor;
        private readonly string JsonFilePath;
        
        public int nLanguage;
        public string sLanguage;

        public LoginController(IConfiguration configuration, IHostingEnvironment hostingEnvironment, IHttpContextAccessor accessor)
        {
            _configuration = configuration;
            _hostingEnvironment = hostingEnvironment;
            _accessor = accessor;
            JsonFilePath = _hostingEnvironment.WebRootPath + "\\";
        }

        public IActionResult Index(int nLan = 1)
        {
            ViewBag.nLan = nLan;
            return View();
        }

        public IActionResult Idfind(int nLan = 1)
        {
            ViewBag.nLan = nLan;
            ViewBag.UserIp = HttpContext.Connection.RemoteIpAddress.ToString();
            return View();
        }

        public IActionResult Pwfind(int nLan = 1)
        {
            ViewBag.nLan = nLan;
            //ViewBag.UserIp = HttpContext.Connection.RemoteIpAddress.ToString();
            ViewBag.UserIp = _accessor.HttpContext.Connection.RemoteIpAddress.ToString();
            return View();
        }

        public IActionResult Join(int nLan = 1)
        {
            ViewBag.nLan = nLan;
            return View();
        }

        //public IActionResult GameLoginCallback(int gSocial, int errCode, string sUserID, string sPass = "", int nLan = 1)
        public IActionResult GameLoginCallback(int Social, string UserID, string PassWD = "", int lan_idx = 1, int errCode=0)
        {

            var ss = HttpContext.Request.Query["sPass"];

            ViewBag.nLan = lan_idx;

            var jsonData = new JObject();
            jsonData.Add("gSocial", Social);
            jsonData.Add("sUserID", UserID);
            jsonData.Add("sPass", PassWD);
            jsonData.Add("errCode", errCode);

            // 성인인증이 되었는지 여부 확인 정책없음
            //if (errCode == 0)
            //{
            //    try
            //    {
            //        using (SqlConnection con = new SqlConnection(connStrHoldem))
            //        {
            //            con.Open();
            //            SqlCommand cmd = new SqlCommand("USP_JSON_MEMBER_ADULT_CHECK", con);
            //            cmd.CommandType = System.Data.CommandType.StoredProcedure;
            //            cmd.Parameters.AddWithValue("@UserID", sUserID).Direction = System.Data.ParameterDirection.Input;
            //            cmd.Parameters.AddWithValue("@Social", gSocial).Direction = System.Data.ParameterDirection.Input;
            //            cmd.Parameters.Add("@rCnt", System.Data.SqlDbType.Int, -1).Direction = System.Data.ParameterDirection.Output;
            //            cmd.Parameters.Add("@rVal", System.Data.SqlDbType.NVarChar, 100).Direction = System.Data.ParameterDirection.Output;
            //            cmd.ExecuteNonQuery();

            //            // OutPut 데이터 받기
            //            var nRetval = (int)cmd.Parameters["@rCnt"].Value;
            //            var sRetval = cmd.Parameters["@rVal"].Value;

            //            con.Close();

            //            if (nRetval == 0)
            //            {
            //                jsonData.Add("errCode", nRetval);
            //            }
            //            else
            //            {
            //                var routeValues = new RouteValueDictionary { { "UserID", sUserID }, { "Social", gSocial }, { "sPass", sPass } };
            //                return RedirectToAction("Kmcert", "Home", routeValues);
            //            }
            //        }
            //    }
            //    catch (Exception ex)
            //    {
            //        Console.Write(ex.Message);
            //    }

            //}
            //else
            //{
            //    jsonData.Add("errCode", errCode);
            //}

            ViewBag.CallBackJson = jsonData;

            return View();
        }

    }
}