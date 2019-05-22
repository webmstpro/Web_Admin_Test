using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace GhGlobal_Models.User
{
    public class ServiceCenter
    {
        public class USP_ServiceCenter_List
        {
            public int lan_idx { get; set; }
            public string conType { get; set; }
            public string sbUserID { get; set; }
            public int PageSize { get; set; }
            public int PageNo { get; set; }
            public int sbGtype { get; set; }
            public string sKey { get; set; }
            public string sKey1 { get; set; }
            public string sVal { get; set; }
            public string sVal1 { get; set; }
        }

        public class USP_ServiceCenter_Insert
        {
            public int lan_idx { get; set; }
            public string conType { get; set; }
            public string sbUserID { get; set; }
            public Int64 sb_idx { get; set; }
            public string sb_content { get; set; }
            public int sb_use { get; set; }
            public string sb_email { get; set; }
            public string sb_phone { get; set; }
            public int sbGtype { get; set; }
            public int sbQtype { get; set; }
        }

        public class USP_GameGuide_List
        {
            public int lan_idx { get; set; }
            public int sbGtype { get; set; }
            public int gg_idx { get; set; }
        }

        public class USP_Terms_List
        {
            public int lan_idx { get; set; }
            public int sbGtype { get; set; }
            public int gg_idx { get; set; }
        }
    }
}
