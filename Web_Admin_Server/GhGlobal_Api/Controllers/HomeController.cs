using System;
using System.Diagnostics;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using GhGlobal_Api.Models;
using Dapper;
using Microsoft.Extensions.Configuration;
using Microsoft.AspNetCore.Hosting;
using Microsoft.AspNetCore.Http;
using System.Data;
using GhGlobal_Api.Cmd;
using System.Collections;

namespace GhGlobal_Api.Controllers
{
    public class HomeController : Controller
    {
        private readonly IConfiguration _configuration;
        private readonly IHostingEnvironment _hostingEnvironment;
        //private readonly IHttpContextAccessor _httpContextAccessor;
        private static string _StrConn;
        //private static string _userIP;
        private string sLanguage;
        private readonly string _RootPath;

        //public HomeController(IConfiguration configuration, IHostingEnvironment hostingEnvironment, IHttpContextAccessor httpContextAccessor)
        public HomeController(IConfiguration configuration, IHostingEnvironment hostingEnvironment)
        {
            _configuration = configuration;
            _hostingEnvironment = hostingEnvironment;
            //_httpContextAccessor = httpContextAccessor;
            _StrConn = configuration.GetConnectionString("DevConnection");
            _RootPath = _hostingEnvironment.WebRootPath + "\\";
        }

        public IActionResult Index()
        {
            return View();
        }

        [HttpPost]
        //public async Task<JsonResult> SetMemberInsert(GhGlobal_Models.User.Login.USP_MEMBER_INSERT mParams)
        public JsonResult SetMemberInsert(GhGlobal_Models.User.Login.USP_MEMBER_INSERT mParams)
        {
            Hashtable jsonReturn = new Hashtable();

            DynamicParameters param = new DynamicParameters();
            param.Add("@lan_idx", mParams.lan_idx);
            param.Add("@UserID", mParams.UserID);
            param.Add("@PassWD", mParams.PassWD);
            param.Add("@Social", mParams.Social);
            param.Add("@Email", mParams.Email);
            param.Add("@rCnt", 0, DbType.Int16, ParameterDirection.Output);
            param.Add("@rVal", "", DbType.String, ParameterDirection.Output);
            //var DataResult = await DapperORM.ReturnListAsync<dynamic>("USP_MEMBER_INSERT", param, _StrConn);
            var DataResult = DapperORM.ReturnList<dynamic>("USP_MEMBER_INSERT", param, _StrConn);

            jsonReturn.Add("rCnt", param.Get<Int16>("@rCnt"));
            jsonReturn.Add("rVal", param.Get<string>("@rVal"));

            return Json(jsonReturn);
        }

        [HttpPost]
        public JsonResult SetMemberLogin(GhGlobal_Models.User.Login.USP_MEMBER_INSERT mParams)
        {
            Hashtable jsonReturn = new Hashtable();

            DynamicParameters param = new DynamicParameters();
            param.Add("@lan_idx", mParams.lan_idx);
            param.Add("@UserID", mParams.UserID);
            param.Add("@PassWD", mParams.PassWD);
            param.Add("@Social", mParams.Social);
            param.Add("@rCnt", 0, DbType.Int16, ParameterDirection.Output);
            param.Add("@rVal", "", DbType.String, ParameterDirection.Output);
            //var DataResult = await DapperORM.ReturnListAsync<dynamic>("USP_MEMBER_LOGIN", param, _StrConn);
            try {
                var DataResult = DapperORM.ReturnList<dynamic>("USP_MEMBER_LOGIN", param, _StrConn);
            }
            catch(Exception e)
            {
                var ss = e.Message;
            }
            jsonReturn.Add("rCnt", param.Get<Int16>("@rCnt"));
            jsonReturn.Add("rVal", param.Get<string>("@rVal"));

            return Json(jsonReturn);
        }

        [HttpPost]
        public JsonResult GetUserIdCheck(GhGlobal_Models.User.Login.USP_MEMBER_INSERT mParams)
        {
            Hashtable jsonReturn = new Hashtable();

            DynamicParameters param = new DynamicParameters();
            param.Add("@lan_idx", mParams.lan_idx);
            param.Add("@UserID", mParams.UserID);
            param.Add("@Social", mParams.Social);
            param.Add("@rCnt", 0, DbType.Int16, ParameterDirection.Output);
            param.Add("@rVal", "", DbType.String, ParameterDirection.Output);
            var DataResult = DapperORM.ReturnList<dynamic>("USP_MEMBER_IDCHECK", param, _StrConn);

            jsonReturn.Add("rCnt", param.Get<Int16>("@rCnt"));
            jsonReturn.Add("rVal", param.Get<string>("@rVal"));

            return Json(jsonReturn);
        }

        [HttpPost]
        public JsonResult SetUserPwdFind(GhGlobal_Models.User.Login.USP_MEMBER_INSERT mParams)
        {
            SetLanguage(mParams.lan_idx);
            Hashtable jsonReturn = new Hashtable();
            try
            {
                DynamicParameters param = new DynamicParameters();
                param.Add("@lan_idx", mParams.lan_idx);
                param.Add("@UserID", mParams.UserID);
                param.Add("@Social", mParams.Social);
                param.Add("@UserEmail", mParams.Email);
                //param.Add("@UserIP", HttpContext.Connection.RemoteIpAddress.ToString());
                param.Add("@UserIP", mParams.UserIP);
                param.Add("@rCnt", 0, DbType.Int16, ParameterDirection.Output);
                param.Add("@rVal", "", DbType.String, ParameterDirection.Output);
                param.Add("@ChangePass", "", DbType.String, ParameterDirection.Output);
                var DataResult = DapperORM.ReturnList<dynamic>("USP_MEMBER_PWDFIND", param, _StrConn);

                jsonReturn.Add("rCnt", param.Get<Int16>("@rCnt"));
                jsonReturn.Add("rVal", param.Get<string>("@rVal"));

                if (param.Get<Int16>("@rCnt") == 0)
                {
                    // AWS 메일 보내기
                    new Cmd.AswService().SetAWSEmailSend(_RootPath, mParams.Email, param.Get<string>("@ChangePass"), sLanguage);
                }
            }
            catch(Exception e)
            {
                jsonReturn.Add("rCnt", 100);
                jsonReturn.Add("rVal", e.Message);
            }

            return Json(jsonReturn);
        }

        [HttpPost]
        //public async Task<JsonResult> GetServiceCenter(GhGlobal_Models.User.ServiceCenter.USP_ServiceCenter_List mParams)
        public JsonResult GetServiceCenter(GhGlobal_Models.User.ServiceCenter.USP_ServiceCenter_List mParams)
        {
            SetLanguage(mParams.lan_idx);
            Hashtable jsonReturn = new Hashtable();

            try
            {
                DynamicParameters param = new DynamicParameters();
                param.Add("@lan_idx", mParams.lan_idx);
                param.Add("@conType", mParams.conType);
                param.Add("@sbUserID", mParams.sbUserID);
                param.Add("@PageSize", mParams.PageSize);
                param.Add("@PageNo", mParams.PageNo);
                param.Add("@sbGtype", mParams.sbGtype);
                param.Add("@seKey", mParams.sKey);
                param.Add("@seVAl", mParams.sVal);
                param.Add("@seKey1", mParams.sKey1);
                param.Add("@seVAl1", mParams.sVal1);
                param.Add("@tCnt", 0, DbType.Int16, ParameterDirection.Output);
                //var DataResult = await DapperORM.ReturnListAsync<dynamic>("WSP_ServiceCenter_AllList", param, _StrConn);
                var DataResult = DapperORM.ReturnList<dynamic>("WSP_ServiceCenter_AllList", param, _StrConn);
                var tupleResult = new Tuple<dynamic, int>(DataResult, param.Get<Int16>("@tCnt"));

                return Json(tupleResult);

            }
            catch (Exception e)
            {
                jsonReturn.Add("rCnt", 100);
                jsonReturn.Add("rVal", e.Message);
            }

            return Json(jsonReturn);
        }

        [HttpPost]
        public JsonResult SetServiceCenterCUD(GhGlobal_Models.User.ServiceCenter.USP_ServiceCenter_Insert mParams)
        {
            SetLanguage(mParams.lan_idx);
            Hashtable jsonReturn = new Hashtable();
            try
            {
                DynamicParameters param = new DynamicParameters();
                param.Add("@lan_idx", mParams.lan_idx);
                param.Add("@conType", mParams.conType);
                param.Add("@sbUserID", mParams.sbUserID);
                param.Add("@sb_idx", mParams.sb_idx);
                param.Add("@sb_content", mParams.sb_content);
                param.Add("@sb_use", mParams.sb_use);
                param.Add("@sb_email", mParams.sb_email);
                param.Add("@sb_phone", mParams.sb_phone);
                param.Add("@sbGtype", mParams.sbGtype);
                param.Add("@sbQtype", mParams.sbQtype);

                param.Add("@rCnt", 0, DbType.Int16, ParameterDirection.Output);
                param.Add("@rVal", "", DbType.String, ParameterDirection.Output);
                var DataResult = DapperORM.ReturnList<dynamic>("WSP_ServiceCenter_Update", param, _StrConn);

                jsonReturn.Add("rCnt", param.Get<Int16>("@rCnt"));
                jsonReturn.Add("rVal", param.Get<string>("@rVal"));

                return Json(jsonReturn);

            }
            catch (Exception e)
            {
                jsonReturn.Add("rCnt", 100);
                jsonReturn.Add("rVal", e.Message);
            }

            return Json(jsonReturn);
        }

        [HttpPost]
        public JsonResult GetServiceCenterDetail(GhGlobal_Models.User.ServiceCenter.USP_ServiceCenter_Insert mParams)
        {
            SetLanguage(mParams.lan_idx);
            Hashtable jsonReturn = new Hashtable();
            try
            {
                DynamicParameters param = new DynamicParameters();
                param.Add("@lan_idx", mParams.lan_idx);
                param.Add("@conType", mParams.conType);
                param.Add("@sbUserID", mParams.sbUserID);
                param.Add("@sb_idx", mParams.sb_idx);
                var DataResult = DapperORM.ReturnList<dynamic>("WSP_ServiceCenter_Detail", param, _StrConn);

                return Json(DataResult);

            }
            catch (Exception e)
            {
                jsonReturn.Add("rCnt", 100);
                jsonReturn.Add("rVal", e.Message);
            }

            return Json(jsonReturn);
        }

        [HttpPost]
        public JsonResult GetMemberDetail(string sUserID)
        {
            Hashtable jsonReturn = new Hashtable();
            try
            {
                DynamicParameters param = new DynamicParameters();
                param.Add("@sbUserID", sUserID);
                var DataResult = DapperORM.ReturnList<dynamic>("WSP_MEMBER_DETAIL", param, _StrConn);

                return Json(DataResult);

            }
            catch (Exception e)
            {
                jsonReturn.Add("rCnt", 100);
                jsonReturn.Add("rVal", e.Message);
            }

            return Json(jsonReturn);
        }


        [HttpPost]
        public JsonResult GetQuestionType(GhGlobal_Models.User.Default.USP_Default mParams)
        {
            SetLanguage(mParams.lan_idx);
            Hashtable jsonReturn = new Hashtable();

            try
            {
                DynamicParameters param = new DynamicParameters();
                param.Add("@lan_idx", mParams.lan_idx);
                var DataResult = DapperORM.ReturnList<dynamic>("WSP_SYS_QuestionType", param, _StrConn);
                return Json(DataResult);

            }
            catch (Exception e)
            {
                jsonReturn.Add("rCnt", 100);
                jsonReturn.Add("rVal", e.Message);
            }

            return Json(jsonReturn);
        }

        [HttpPost]
        public JsonResult GetFaqList(GhGlobal_Models.User.Default.USP_Paging mParams)
        {
            SetLanguage(mParams.lan_idx);
            Hashtable jsonReturn = new Hashtable();

            try
            {
                DynamicParameters param = new DynamicParameters();
                param.Add("@lan_idx", mParams.lan_idx);
                param.Add("@conType", mParams.conType);
                param.Add("@PageSize", mParams.PageSize);
                param.Add("@PageNo", mParams.PageNo);
                param.Add("@sbGtype", mParams.sbGtype);
                param.Add("@seKey", mParams.seKey);
                param.Add("@seVal", mParams.seVal);
                param.Add("@tCnt", 0, DbType.Int16, ParameterDirection.Output);
                var DataResult = DapperORM.ReturnList<dynamic>("WSP_Faq_List", param, _StrConn);
                jsonReturn.Add("tCnt", param.Get<Int16>("@tCnt"));
                var tupleResult = new Tuple<dynamic, int>(DataResult, param.Get<Int16>("@tCnt"));
                return Json(tupleResult);

            }
            catch (Exception e)
            {
                jsonReturn.Add("rCnt", 100);
                jsonReturn.Add("rVal", e.Message);
            }

            return Json(jsonReturn);
        }

        [HttpPost]
        public JsonResult GetNoticeList(GhGlobal_Models.User.Default.USP_Paging mParams)
        {
            SetLanguage(mParams.lan_idx);
            Hashtable jsonReturn = new Hashtable();

            try
            {
                DynamicParameters param = new DynamicParameters();
                param.Add("@lan_idx", mParams.lan_idx);
                param.Add("@conType", mParams.conType);
                param.Add("@PageSize", mParams.PageSize);
                param.Add("@PageNo", mParams.PageNo);
                param.Add("@sbGtype", mParams.sbGtype);
                param.Add("@seKey", mParams.seKey);
                param.Add("@seVal", mParams.seVal);
                param.Add("@tCnt", 0, DbType.Int16, ParameterDirection.Output);
                var DataResult = DapperORM.ReturnList<dynamic>("WSP_Notice_List", param, _StrConn);
                jsonReturn.Add("tCnt", param.Get<Int16>("@tCnt"));
                var tupleResult = new Tuple<dynamic, int>(DataResult, param.Get<Int16>("@tCnt"));
                return Json(tupleResult);

            }
            catch (Exception e)
            {
                jsonReturn.Add("rCnt", 100);
                jsonReturn.Add("rVal", e.Message);
            }

            return Json(jsonReturn);
        }

        [HttpPost]
        public JsonResult GetGameGuide(GhGlobal_Models.User.ServiceCenter.USP_GameGuide_List mParams)
        {
            SetLanguage(mParams.lan_idx);
            Hashtable jsonReturn = new Hashtable();

            try
            {
                DynamicParameters param = new DynamicParameters();
                param.Add("@lan_idx", mParams.lan_idx);
                param.Add("@gg_Gtype", mParams.sbGtype);
                param.Add("@gg_idx", mParams.gg_idx);
                var DataResult = DapperORM.ReturnList<dynamic>("WSP_GameGuideList", param, _StrConn);
                return Json(DataResult);

            }
            catch (Exception e)
            {
                jsonReturn.Add("rCnt", 100);
                jsonReturn.Add("rVal", e.Message);
            }

            return Json(jsonReturn);
        }

        [HttpPost]
        public JsonResult GetTerms(GhGlobal_Models.User.ServiceCenter.USP_Terms_List mParams)
        {
            SetLanguage(mParams.lan_idx);
            Hashtable jsonReturn = new Hashtable();

            try
            {
                DynamicParameters param = new DynamicParameters();
                param.Add("@lan_idx", mParams.lan_idx);
                param.Add("@gg_Gtype", mParams.sbGtype);
                var DataResult = DapperORM.ReturnList<dynamic>("WSP_Terms", param, _StrConn);
                return Json(DataResult);
            }
            catch (Exception e)
            {
                jsonReturn.Add("rCnt", 100);
                jsonReturn.Add("rVal", e.Message);
            }

            return Json(jsonReturn);
        }

        [HttpPost]
        public JsonResult GetGameType()
        {
            var DataResult = DapperORM.ReturnList<dynamic>("WSP_GameType", null, _StrConn);
            return Json(DataResult);
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

        [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
        public IActionResult Error()
        {
            return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
        }
    }
}
