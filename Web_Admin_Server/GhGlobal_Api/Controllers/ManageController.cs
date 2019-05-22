using System;
using System.Collections;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Linq;
using Dapper;
using GhGlobal_Api.Cmd;
using Microsoft.AspNetCore.Hosting;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Configuration;

namespace GhGlobal_Api.Controllers
{
    public class ManageController : Controller
    {
        private readonly IConfiguration _configuration;
        private readonly IHostingEnvironment _hostingEnvironment;
        private static string _StrConn;
        //private string sLanguage;
        private readonly string _RootPath;
        private static List<string> _FilesExts;

        public ManageController(IConfiguration configuration, IHostingEnvironment hostingEnvironment)
        {
            _configuration = configuration;
            _hostingEnvironment = hostingEnvironment;
            _StrConn = configuration.GetConnectionString("DevConnection");
            _RootPath = _hostingEnvironment.WebRootPath + "\\";
            _FilesExts = _configuration.GetSection("FileUpload:ManageFileExt").Get<List<string>>();
        }

        [HttpPost]
        public JsonResult SetAdLogin(GhGlobal_Models.Manage.Man.adMember mParams)
        {
            Hashtable jsonReturn = new Hashtable();
            DynamicParameters param = new DynamicParameters();
            param.Add("@ad_id", mParams.ad_id);
            param.Add("@ad_pw", mParams.ad_pw);
            param.Add("@ad_ip", mParams.ad_ip);
            param.Add("@rCnt", -1, DbType.Int16, ParameterDirection.Output);
            param.Add("@rVal", "", DbType.String, ParameterDirection.Output);
            var DataResult = DapperORM.ReturnList<dynamic>("WSP_ADMEMBER_LOGIN", param, _StrConn);

            jsonReturn.Add("rCnt", param.Get<Int16>("@rCnt"));
            jsonReturn.Add("rVal", param.Get<string>("@rVal"));

            return Json(DataResult);
        }

        [HttpPost]
        public JsonResult GetAdMemList(GhGlobal_Models.Manage.Man.spAdMemParam01 mParams)
        {
            DynamicParameters param = new DynamicParameters();
            param.Add("@PageSize", mParams.PageSize);
            param.Add("@PageNo", mParams.PageNo);
            param.Add("@sKey", mParams.sKey);
            param.Add("@sVal", mParams.sVal);
            param.Add("@rCnt", 0, DbType.Int16, ParameterDirection.Output);
            var DataResult = DapperORM.ReturnList<dynamic>("WSP_ADMEMBER_LIST", param, _StrConn);
            var retuData = new Tuple<dynamic, int>(DataResult, param.Get<Int16>("@rCnt"));
            return Json(retuData);
        }

        [HttpPost]
        public JsonResult GetAdMemDetail(GhGlobal_Models.Manage.Man.adMember mParams)
        {
            DynamicParameters param = new DynamicParameters();
            param.Add("@ad_idx", mParams.ad_idx);
            var DataResult = DapperORM.ReturnList<dynamic>("WSP_ADMEMBER_DETAIL", param, _StrConn);
            return Json(DataResult);
        }

        [HttpPost]
        public JsonResult GetAdMemIdCheck(GhGlobal_Models.Manage.Man.adMember mParams)
        {
            Hashtable jsonReturn = new Hashtable();
            DynamicParameters param = new DynamicParameters();
            param.Add("@ad_id", mParams.ad_id);
            param.Add("@rCnt", -1, DbType.Int16, ParameterDirection.Output);
            param.Add("@rVal", "", DbType.String, ParameterDirection.Output);
            var DataResult = DapperORM.ReturnList<dynamic>("WSP_ADMEMBER_IDCHECK", param, _StrConn);
            jsonReturn.Add("rCnt", param.Get<Int16>("@rCnt"));
            jsonReturn.Add("rVal", param.Get<string>("@rVal"));
            return Json(jsonReturn);
        }

        [HttpPost]
        public JsonResult GetAdMemCud(GhGlobal_Models.Manage.Man.adMember mParams)
        {
            Hashtable jsonReturn = new Hashtable();
            DynamicParameters param = new DynamicParameters();
            param.Add("@ad_idx", mParams.ad_idx);
            param.Add("@ad_id", mParams.ad_id);
            param.Add("@ad_pw", mParams.ad_pw);
            param.Add("@ad_name", mParams.ad_name);
            param.Add("@ad_level", mParams.ad_level);
            param.Add("@ad_use", mParams.ad_use);
            param.Add("@ad_ip", HttpContext.Connection.RemoteIpAddress.ToString());
            param.Add("@rCnt", -1, DbType.Int16, ParameterDirection.Output);
            param.Add("@rVal", "", DbType.String, ParameterDirection.Output);
            var DataResult = DapperORM.ReturnList<dynamic>("WSP_ADMEMBER_CUD", param, _StrConn);
            jsonReturn.Add("rCnt", param.Get<Int16>("@rCnt"));
            jsonReturn.Add("rVal", param.Get<string>("@rVal"));
            return Json(jsonReturn);
        }

        [HttpPost]
        public JsonResult GetMemList(GhGlobal_Models.Manage.Man.spMemParam01 mParams)
        {
            DynamicParameters param = new DynamicParameters();
            param.Add("@lan_idx", mParams.lan_idx);
            param.Add("@PageSize", mParams.PageSize);
            param.Add("@PageNo", mParams.PageNo);
            param.Add("@sKey", mParams.sKey);
            param.Add("@sVal", mParams.sVal);
            param.Add("@rCnt", 0, DbType.Int16, ParameterDirection.Output);
            var DataResult = DapperORM.ReturnList<dynamic>("WSP_MEMBER_LIST", param, _StrConn);
            var retuData = new Tuple<dynamic, int>(DataResult, param.Get<Int16>("@rCnt"));
            return Json(retuData);
        }

        [HttpPost]
        public JsonResult SetMemDel(GhGlobal_Models.Manage.Man.spMemParam02 mParams)
        {
            Hashtable jsonReturn = new Hashtable();
            DynamicParameters param = new DynamicParameters();
            param.Add("@UserIdx", mParams.UserIdx);
            param.Add("@ad_idx", mParams.ad_idx);
            param.Add("@ad_ip", mParams.ad_ip);
            param.Add("@rCnt", -1, DbType.Int16, ParameterDirection.Output);
            param.Add("@rVal", "", DbType.String, ParameterDirection.Output);
            var DataResult = DapperORM.ReturnList<dynamic>("WSP_MEMBER_DEL", param, _StrConn);
            jsonReturn.Add("rCnt", param.Get<Int16>("@rCnt"));
            jsonReturn.Add("rVal", param.Get<string>("@rVal"));
            return Json(jsonReturn);
        }

        [HttpPost]
        public JsonResult SetMemBlock(GhGlobal_Models.Manage.Man.spMemParam03 mParams)
        {
            Hashtable jsonReturn = new Hashtable();
            DynamicParameters param = new DynamicParameters();
            param.Add("@UserIdx", mParams.UserIdx);
            param.Add("@nBlock", mParams.nBlock);
            param.Add("@sBlock", mParams.sBlock);
            param.Add("@rCnt", -1, DbType.Int16, ParameterDirection.Output);
            param.Add("@rVal", "", DbType.String, ParameterDirection.Output);
            var DataResult = DapperORM.ReturnList<dynamic>("WSP_MEMBER_BLOCK", param, _StrConn);
            jsonReturn.Add("rCnt", param.Get<Int16>("@rCnt"));
            jsonReturn.Add("rVal", param.Get<string>("@rVal"));
            return Json(jsonReturn);
        }

        [HttpPost]
        public JsonResult SetNoticeCUD(GhGlobal_Models.Manage.Man.sNotice mParams)
        {
            Hashtable jsonReturn = new Hashtable();
            DynamicParameters param = new DynamicParameters();
            param.Add("@gn_idx", mParams.gn_idx);
            param.Add("@gn_title", mParams.gn_title);
            param.Add("@gn_content", mParams.gn_content);
            param.Add("@gn_Gtype", mParams.gn_Gtype);
            param.Add("@gn_sType", mParams.gn_Stype);
            param.Add("@gn_status", mParams.gn_status);
            param.Add("@rCnt", -1, DbType.Int16, ParameterDirection.Output);
            param.Add("@rVal", "", DbType.String, ParameterDirection.Output);
            var DataResult = DapperORM.ReturnList<dynamic>("WSP_Notice_CUD", param, _StrConn);
            jsonReturn.Add("rCnt", param.Get<Int16>("@rCnt"));
            jsonReturn.Add("rVal", param.Get<string>("@rVal"));
            return Json(jsonReturn);
        }

        [HttpPost]
        public JsonResult SetNoticeDetail(GhGlobal_Models.Manage.Man.sNotice mParams)
        {
            DynamicParameters param = new DynamicParameters();
            param.Add("@gn_idx", mParams.gn_idx);
            var DataResult = DapperORM.ReturnList<dynamic>("WSP_Notice_DETAIL", param, _StrConn);
            return Json(DataResult);
        }

        [HttpPost]
        public JsonResult SetFaqCUD(GhGlobal_Models.Manage.Man.sFaq mParams)
        {
            Hashtable jsonReturn = new Hashtable();
            DynamicParameters param = new DynamicParameters();
            param.Add("@faq_idx", mParams.faq_idx);
            param.Add("@faq_title", mParams.faq_title);
            param.Add("@faq_content", mParams.faq_content);
            param.Add("@faq_Gtype", mParams.faq_Gtype);
            param.Add("@faq_Qtype", mParams.faq_Qtype);
            param.Add("@faq_Use", mParams.faq_Use);
            param.Add("@rCnt", -1, DbType.Int16, ParameterDirection.Output);
            param.Add("@rVal", "", DbType.String, ParameterDirection.Output);
            var DataResult = DapperORM.ReturnList<dynamic>("WSP_Faq_CUD", param, _StrConn);
            jsonReturn.Add("rCnt", param.Get<Int16>("@rCnt"));
            jsonReturn.Add("rVal", param.Get<string>("@rVal"));
            return Json(jsonReturn);
        }

        [HttpPost]
        public JsonResult SetFaqDetail(GhGlobal_Models.Manage.Man.sFaq mParams)
        {
            DynamicParameters param = new DynamicParameters();
            param.Add("@faq_idx", mParams.faq_idx);
            var DataResult = DapperORM.ReturnList<dynamic>("WSP_Faq_DETAIL", param, _StrConn);
            return Json(DataResult);
        }


        [HttpPost]
        public JsonResult SetMemMoneyChange(GhGlobal_Models.Manage.Man.gMember mParams)
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
        public JsonResult GetMemConList(GhGlobal_Models.Manage.Man.spMemParam01 mParams)
        {
            Hashtable jsonReturn = new Hashtable();
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
        public JsonResult SetMemConDel(GhGlobal_Models.Manage.Man.gMember mParams)
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

        [HttpPost]
        public JsonResult GetGameGuideDetail(GhGlobal_Models.Manage.Man.sGameGuide mParams)
        {
            DynamicParameters param = new DynamicParameters();
            param.Add("@gg_idx", mParams.gg_idx);
            var DataResult = DapperORM.ReturnList<dynamic>("WSP_GameGuide_DETAIL", param, _StrConn);
            return Json(DataResult);
        }

        [HttpPost]
        public JsonResult SetGameGuideCUD(GhGlobal_Models.Manage.Man.sGameGuide mParams)
        {
            Hashtable jsonReturn = new Hashtable();
            // 파일 체크 End
            DynamicParameters param = new DynamicParameters();
            param.Add("@gg_idx", mParams.gg_idx);
            param.Add("@gg_title", mParams.gg_title);
            param.Add("@gg_memo", mParams.gg_memo);
            param.Add("@gg_file1", mParams.gg_file1);
            param.Add("@gg_file2", mParams.gg_file2);
            param.Add("@gg_use", mParams.gg_use);
            param.Add("@gg_Gtype", mParams.gg_Gtype);
            param.Add("@gg_orderby", mParams.gg_orderby);
            param.Add("@gg_lan", mParams.gg_lan);
            param.Add("@rCnt", -1, DbType.Int16, ParameterDirection.Output);
            param.Add("@rVal", "", DbType.String, ParameterDirection.Output);
            var DataResult = DapperORM.ReturnList<dynamic>("WSP_GameGuide_CUD", param, _StrConn);
            jsonReturn.Add("rCnt", param.Get<Int16>("@rCnt"));
            jsonReturn.Add("rVal", param.Get<string>("@rVal"));
            return Json(jsonReturn);
        }

        [HttpPost]
        public JsonResult SetTermCUD(GhGlobal_Models.Manage.Man.sTerms mParams)
        {
            Hashtable jsonReturn = new Hashtable();
            // 파일 체크 End
            DynamicParameters param = new DynamicParameters();
            param.Add("@gt_idx", mParams.gt_idx);
            param.Add("@gt_term", mParams.gt_term);
            param.Add("@gt_use", mParams.gt_use);
            param.Add("@gt_type", mParams.gt_type);
            param.Add("@gt_gtype", mParams.gt_Gtype);
            param.Add("@gt_lan", mParams.gt_Lan);
            param.Add("@rCnt", -1, DbType.Int16, ParameterDirection.Output);
            param.Add("@rVal", "", DbType.String, ParameterDirection.Output);
            var DataResult = DapperORM.ReturnList<dynamic>("WSP_Terms_CUD", param, _StrConn);
            jsonReturn.Add("rCnt", param.Get<Int16>("@rCnt"));
            jsonReturn.Add("rVal", param.Get<string>("@rVal"));
            return Json(jsonReturn);
        }

        [HttpPost]
        public JsonResult GetTermDetail(GhGlobal_Models.Manage.Man.sTerms mParams)
        {
            Hashtable jsonReturn = new Hashtable();
            // 파일 체크 End
            DynamicParameters param = new DynamicParameters();
            param.Add("@gt_idx", mParams.gt_idx);
            var DataResult = DapperORM.ReturnList<dynamic>("WSP_Terms_DETAIL", param, _StrConn);
            return Json(DataResult);
        }

        [HttpPost]
        public JsonResult SetGameNoticeEmergency(GhGlobal_Models.Manage.Man.gGame_Notice mParams)
        {
            Hashtable jsonReturn = new Hashtable();

            try
            {
                DynamicParameters param = new DynamicParameters();
                param.Add("@Notice", mParams.Notice);
                param.Add("@Ntype", mParams.Ntype);
                param.Add("@ad_idx", mParams.ad_idx);
                param.Add("@ad_ip", mParams.ad_ip);
                param.Add("@rCnt", -1, DbType.Int16, ParameterDirection.Output);
                param.Add("@rVal", "", DbType.String, ParameterDirection.Output);
                var DataResult = DapperORM.ReturnList<dynamic>("WSP_GAME_NOTICE_EMERGENCY", param, _StrConn);
                jsonReturn.Add("rCnt", param.Get<Int16>("@rCnt"));
                jsonReturn.Add("rVal", param.Get<string>("@rVal"));

                if (mParams.Ntype == 0)
                    return Json(DataResult);
                else
                    return Json(jsonReturn);

            }
            catch(Exception e)
            {
                return Json(e.Message);
            }
        }

        [HttpPost]
        public JsonResult SetGameNotice(GhGlobal_Models.Manage.Man.gNotice mParams)
        {
            Hashtable jsonReturn = new Hashtable();
            
            DynamicParameters param = new DynamicParameters();
            param.Add("@IsCheck", mParams.IsCheck);
            param.Add("@Ver", mParams.Ver);
            param.Add("@Msg", mParams.Msg);
            param.Add("@Ntype", mParams.Ntype);
            param.Add("@ad_idx", mParams.ad_idx);
            param.Add("@ad_ip", mParams.ad_ip);
            param.Add("@rCnt", -1, DbType.Int16, ParameterDirection.Output);
            param.Add("@rVal", "", DbType.String, ParameterDirection.Output);
            var DataResult = DapperORM.ReturnList<dynamic>("WSP_GAME_NOTICE", param, _StrConn);
            jsonReturn.Add("rCnt", param.Get<Int16>("@rCnt"));
            jsonReturn.Add("rVal", param.Get<string>("@rVal"));

            if (mParams.Ntype == 0)
                return Json(DataResult);
            else
                return Json(jsonReturn);
        }

        [HttpPost]
        public JsonResult GetPlayCoinShop()
        {
            var DataResult = DapperORM.ReturnList<dynamic>("WSP_PLAYCOINSHOP", null, _StrConn);
            return Json(DataResult);
        }

        [HttpPost]
        public JsonResult GetPlayCoinLog(GhGlobal_Models.Manage.Man.spAdMemParam01 mParams)
        {
            DynamicParameters param = new DynamicParameters();
            param.Add("@PageSize", mParams.PageSize);
            param.Add("@PageNo", mParams.PageNo);
            param.Add("@seKey", mParams.sKey);
            param.Add("@seVal", mParams.sVal);
            param.Add("@rCnt", 0, DbType.Int16, ParameterDirection.Output);
            var DataResult = DapperORM.ReturnList<dynamic>("WSP_PLAYCOIN_LOG", param, _StrConn);
            var retuData = new Tuple<dynamic, int>(DataResult, param.Get<Int16>("@rCnt"));
            return Json(retuData);
        }

        [HttpPost]
        public JsonResult SetGameTypeCUD(GhGlobal_Models.Manage.Man.sGameType mParams)
        {
            Hashtable jsonReturn = new Hashtable();
            try
            {
                DynamicParameters param = new DynamicParameters();
                param.Add("@g_idx", mParams.g_idx);
                param.Add("@g_Num", mParams.g_Num);
                param.Add("@g_Name", mParams.g_Name);
                param.Add("@g_Use", mParams.g_Use);
                param.Add("@ad_idx", mParams.ad_idx);
                param.Add("@ad_ip", mParams.ad_ip);
                param.Add("@rCnt", -1, DbType.Int16, ParameterDirection.Output);
                param.Add("@rVal", "", DbType.String, ParameterDirection.Output);
                var DataResult = DapperORM.ReturnList<dynamic>("WSP_GameType_CUD", param, _StrConn);
                jsonReturn.Add("rCnt", param.Get<Int16>("@rCnt"));
                jsonReturn.Add("rVal", param.Get<string>("@rVal"));

                return Json(jsonReturn);
            }catch(Exception e)
            {
                return Json(e.Message);
            }
        }

        [HttpPost]
        public JsonResult GetGameType()
        {
            var DataResult = DapperORM.ReturnList<dynamic>("WSP_GameType_ALL", null, _StrConn);
            return Json(DataResult);
        }


        [HttpPost]
        public JsonResult GetGameLog(GhGlobal_Models.Manage.Man.pGameLog mParams)
        {
            try
            {
                DynamicParameters param = new DynamicParameters();
                param.Add("@PageSize", mParams.PageSize);
                param.Add("@PageNo", mParams.PageNo);
                param.Add("@sKey", mParams.sKey);
                param.Add("@sVal", mParams.sVal);
                param.Add("@gType", mParams.gType);
                param.Add("@rCnt", -1, DbType.Int16, ParameterDirection.Output);
                var DataResult = DapperORM.ReturnList<dynamic>("WSP_GAMELOG", param, _StrConn);
                var retuData = new Tuple<dynamic, int>(DataResult, param.Get<Int16>("@rCnt"));
                return Json(retuData);
            }catch(Exception e)
            {
                return Json(e.Message);
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

        //public IActionResult Index()
        //{
        //    return View();
        //}
    }
}