using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class xoavephim : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void Xoa(object sender, EventArgs e)
        {
            if (IsPostBack)
            {

                //lấy thông tin cần thiết để xóa movieticket thông qua id lấy được từ url
                user userLogin = Session["userLogin"] as user;
                List<user> users = Application["userList"] as List<user>;

                //lấy id
                int idMovie = int.Parse(Request.QueryString["id"]);

                //kiểm tra xem có user không
                if (userLogin.UserName != null)
                {
                    foreach (user u in users)
                    {
                        //kiếm userLogin trong list user
                        if (u.UserName == userLogin.UserName)
                        {
                            //tìm id trùng với id trên url rồi xóa
                            for (int i = 0; i < u.MovieTicket.Count; i++)
                            {
                                if (u.MovieTicket[i].ID == idMovie)
                                {
                                    u.MovieTicket.RemoveAt(i);
                                }
                            }
                            break;
                        }
                    }
                }

                Response.Redirect("GioHang.aspx");
            }
        }

        protected void Khong(object sender, EventArgs e)
        {
            if (IsPostBack)
            {

                Response.Redirect("GioHang.aspx");
            }
        }
    }
}