using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class dangky : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                string userName = Request.Form["tbname"];
                string userEmail = Request.Form["tbemail"];
                string userPassword = Request.Form["password"];
                List<MovieTicket> movieTickets = new List<MovieTicket>();

                List<user> users = Application["userList"] as List<user>;

                bool flag = true;

                foreach (user u in users)
                {
                    if (u.UserName == userName || u.UserEmail == userEmail)
                    {
                        flag = false;
                        canhbao.InnerHtml = "Tài khoản đã tồn tại !";
                        break;
                    }
                }
                if (flag)
                {
                    users.Add(new user(userName, userEmail, userPassword, movieTickets));
                    canhbao.InnerText = "Tạo tài khoản thành công !";
                }

            }
        }
    }
}