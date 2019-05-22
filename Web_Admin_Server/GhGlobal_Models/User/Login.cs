using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace GhGlobal_Models.User
{
    public class Login
    {
        public class USP_MEMBER_INSERT
        {
            public int lan_idx { get; set; }
            public string UserID { get; set; }
            public string PassWD { get; set; }
            public int Social { get; set; }
            public string Email { get; set; }
            public string UserIP { get; set; }
        }
    }
}
