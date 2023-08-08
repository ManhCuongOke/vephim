using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class dangxuat : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //DateTime timeLogin = (DateTime)Session["login"];
            //DateTime timeLogout = DateTime.Now;
            //TimeSpan time = timeLogin.Subtract(timeLogout);
            //int sercon = time.Seconds;
            //int minute = time.Minutes;
            //int hour = time.Hours;

            //ThongBaoFormServer.InnerText = "Bạn đã đăng nhập" + hour + "giờ, " + minute + "phút, " + sercon + "giây";

            Session.Abandon();
            Response.Redirect("~/trangchu.aspx");
        }
    }
}