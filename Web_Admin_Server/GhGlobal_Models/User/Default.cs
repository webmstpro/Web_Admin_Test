using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace GhGlobal_Models.User
{
    public class Default
    {
        public class USP_Default
        {
            public int lan_idx { get; set; }
        }

        public class USP_Paging
        {
            public int lan_idx { get; set; }
            public string conType { get; set; }
            public int PageSize { get; set; }
            public int PageNo { get; set; }
            public int sbGtype { get; set; }
            public string seKey { get; set; }
            public string seVal { get; set; }
        }
    }
}
