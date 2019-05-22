using System;
using System.Collections;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Threading.Tasks;
using Dapper;
using GhGlobal_Api.Cmd;
using Microsoft.AspNetCore.Hosting;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Configuration;

namespace GhGlobal_Api.Controllers
{
    public class CardSetController : Controller
    {
        private readonly IConfiguration _configuration;
        private readonly IHostingEnvironment _hostingEnvironment;
        //private readonly IHttpContextAccessor _httpContextAccessor;
        private static string _StrConn;

        public CardSetController(IConfiguration configuration, IHostingEnvironment hostingEnvironment)
        {
            _configuration = configuration;
            _hostingEnvironment = hostingEnvironment;
            _StrConn = configuration.GetConnectionString("DevConnection");
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
            
            foreach(var item in form["User"].Select((value, index) => new { Value = value, Index = index }))
            {
                User += (item.Index == (form["User"].Count - 1)) ? Convert.ToString(item.Index) : Convert.ToString(item.Index) + ",";
            }

            //foreach (var item in form)
            //{
            //    if(item.Key == "User")
            //    {
            //        //Card = item.Value;
            //        foreach (var item1 in item.Value.Select((value, index) => new { Value = value, Index = index }))
            //        {
            //            var s1 = item1.Index;
            //            var s2 = item1.Value;
            //            //User += item1.Index + ":" + item1.Value + ",";
            //            User += (item1.Index == (item.Value.Count - 1) ) ? Convert.ToString(item1.Index) : Convert.ToString(item1.Index) + "," ;
            //        }
            //    }
            //}


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
            if(form["User_4"].ToString() != "0")
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

            foreach(var item in CardArry.Select((value, index) => new { Value = value, Index = index }))
            {
                var mainCheck = item.Index % 12;

                if(mainCheck <= 1)
                {
                    if(item.Value != "0")
                    {
                        // 게임 메인용
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

                // 웹페이지용
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
        public JsonResult GetCardList(int gNum)
        {
            DynamicParameters param = new DynamicParameters();
            param.Add("@GameKind", gNum);
            var DataResult = DapperORM.ReturnList<dynamic>("WSP_TEST_GameCardSetting_List", param, _StrConn);
            var UserList = new List<GhGlobal_Models.CardSet.Cards>();

            if(DataResult.Count() > 0)
            {
                var GameKind = DataResult.First().GameKind;
                var Rand = DataResult.First().Rand;
                var Card = DataResult.First().Card;
                var userCard = DataResult.First().UserCard;

                try
                {
                    var CardArry = Card.Split(",");
                    var userCardArry = userCard.Split(",");

                    if(gNum == 4)
                    {
                        for (var i = 0; i < userCardArry.Length; i++)
                        {
                            //var sss = (CardArry.Length > i) ? CardArry[i] : "0";
                            UserList.Add(new GhGlobal_Models.CardSet.Cards()
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
                            //var sss = (CardArry.Length > i) ? CardArry[i] : "0";
                            UserList.Add(new GhGlobal_Models.CardSet.Cards()
                            {
                                GameKind = GameKind,
                                Rand = Rand,
                                Card = (CardArry.Length > i) ? CardArry[i] : "0",
                                UserCard = userCardArry[i]
                            });
                        }
                    }

                    

                }
                catch(Exception e)
                {
                    var ss = e.Message;
                }
                
            }

            return Json(UserList);
        }


        public IActionResult Index()
        {
            return View();
        }
    }
}