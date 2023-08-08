using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    
    public partial class dangnhap : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                
                string userName = Request.Form["tbname"];
                string userPassword = Request.Form["password"];

                List<user> users = Application["userList"] as List<user>;
                bool flag = false;

                if (users != null && users.Count > 0)
                {
                    
                    foreach (user u in users)
                    {
                        if (u.UserName == userName && u.UserPassword == userPassword)
                        {
                            user userLogin = new user(u.UserName, u.UserEmail, u.UserPassword);
                            Session["userLogin"] = userLogin;
                            DateTime timeLogin = DateTime.Now;
                            Session["login"] = timeLogin;
                            flag = true;
                        }
                    }
                }

                if (flag)
                {
                    Response.Redirect("trangchu.aspx");
                }
                else
                {
                    canhbao.InnerHtml = "Tên tài khoản hoặc mật khẩu không chính xác!";
                    int i;
                    i = int.Parse(Application["lock"].ToString());
                    Application["lock"] = ++i;

                    if (i == 3)
                    {
                        //Application.Lock();
                        Session.Timeout = 15;
                        canhbao.InnerHtml = "Bạn đã bị khóa";

                    }
                }
            }

        }
    }
}