using System;

namespace GhGlobal_Models.Manage
{
    public class Man
    {
        public partial class adMember
        {
            public int ad_idx { get; set; }
            public string ad_id { get; set; }
            public string ad_pw { get; set; }
            public string ad_name { get; set; }
            public int ad_level { get; set; }
            public int ad_use { get; set; }
            public string ad_ip { get; set; }
            public DateTime ad_date { get; set; }
        }

        public partial class spAdMemParam01
        {
            public int PageSize { get; set; }
            public int PageNo { get; set; }
            public string sKey { get; set; }
            public string sVal { get; set; }
        }

        public partial class gMember
        {
            public int UserIdx { get; set; }
            public string UserID { get; set; }
            public byte[] PassWD { get; set; }
            public string Nick { get; set; }
            public string RegID { get; set; }
            public int Avata { get; set; }
            public int Social { get; set; }
            public int Gem { get; set; }
            public Int64 Money { get; set; }
            public string Email { get; set; }
            public int bonsa { get; set; }
            public int chongpan { get; set; }
            public DateTime RegDate { get; set; }
            public int Block { get; set; }
            public string kcertCI { get; set; }
            public DateTime kcertCIDate { get; set; }
            public int UserGroup { get; set; }
        }

        public partial class gMemberMulti
        {
            public int UserIdx { get; set; }
            public string UserID { get; set; }
            public byte[] PassWD { get; set; }
            public string Nick { get; set; }
            public string RegID { get; set; }
            public int Avata { get; set; }
            public int Social { get; set; }
            public int Gem { get; set; }
            public double Money1 { get; set; }
            public double Money2 { get; set; }
            public double Money3 { get; set; }
            public double Money4 { get; set; }
            public double Money5 { get; set; }
            public string Email { get; set; }
            public int bonsa { get; set; }
            public int chongpan { get; set; }
            public DateTime RegDate { get; set; }
            public int Block { get; set; }
            public string kcertCI { get; set; }
            public DateTime kcertCIDate { get; set; }
            public int UserGroup { get; set; }
        }

        public partial class spMemParam01
        {
            public int lan_idx { get; set; }
            public int PageSize { get; set; }
            public int PageNo { get; set; }
            public string sKey { get; set; }
            public string sVal { get; set; }
            public int UserIdx { get; set; }
        }

        public partial class spMemParam02
        {
            public Int64 UserIdx { get; set; }
            public int ad_idx { get; set; }
            public string ad_ip { get; set; }
        }

        public partial class spMemParam03
        {
            public Int64 UserIdx { get; set; }
            public int nBlock { get; set; }
            public string sBlock { get; set; }
        }


        public partial class sNotice
        {
            public Int64 gn_idx { get; set; }
            public string gn_title { get; set; }
            public string gn_content { get; set; }
            public int gn_Gtype { get; set; }
            public int gn_Stype { get; set; }
            public int gn_status { get; set; }
        }

        public partial class sFaq
        {
            public Int64 faq_idx { get; set; }
            public string faq_title { get; set; }
            public string faq_content { get; set; }
            public int faq_Gtype { get; set; }
            public int faq_Qtype { get; set; }
            public int faq_Use { get; set; }
        }

        public partial class sGameGuide
        {
            public Int64 gg_idx { get; set; }
            public string gg_title { get; set; }
            public string gg_memo { get; set; }
            public string gg_file1 { get; set; }
            public string gg_file2 { get; set; }
            public int gg_use { get; set; }
            public int gg_Gtype { get; set; }
            public int gg_orderby { get; set; }
            public int gg_lan { get; set; }
        }

        public partial class sTerms
        {
            public Int64 gt_idx { get; set; }
            public string gt_term { get; set; }
            public string gt_type { get; set; }
            public int gt_Gtype { get; set; }
            public int gt_Lan { get; set; }
            public int gt_use { get; set; }
            public int ad_idx { get; set; }
            public string ad_ip { get; set; }
        }

        // 게임 긴급공지 (텍스트만)
        public partial class gGame_Notice
        {
            public string Notice { get; set; }
            public int Ntype { get; set; }
            public int ad_idx { get; set; }
            public string ad_ip { get; set; }
        }

        // 게임공지 버전체크도
        public partial class gNotice
        {
            public Int64 NIdx { get; set; }
            public int IsCheck { get; set; }
            public int Ver { get; set; }
            public string Msg { get; set; }
            public int Ntype { get; set; }
            public int ad_idx { get; set; }
            public string ad_ip { get; set; }
        }

        public partial class sGameType
        {
            public int g_idx { get; set; }
            public int g_Num { get; set; }
            public string g_Name { get; set; }
            public int g_Use { get; set; }
            public int ad_idx { get; set; }
            public string ad_ip { get; set; }
        }

        public partial class pGameLog
        {
            public int PageSize { get; set; }
            public int PageNo { get; set; }
            public string sKey { get; set; }
            public string sVal { get; set; }
            public int gType { get; set; }
        }
    }
}
