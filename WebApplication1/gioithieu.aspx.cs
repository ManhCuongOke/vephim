using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class gioithieu : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            hienUserLogin();
        }

        public void hienUserLogin()
        {
            user userLogin = Session["userLogin"] as user;
            hienSoLuongOfMovieTicketInCart(userLogin);
            if (userLogin.UserName != null)
            {
                login.InnerHtml = "<span class='DangKi'> Xin chào, " + userLogin.UserName + " |" + "</span>"
                              + "<a href='dangxuat.aspx' class='DangNhap'>Đắng xuất</a>";
            }
        }

        public void hienSoLuongOfMovieTicketInCart(user userLogin)
        {
            List<user> users = Application["userList"] as List<user>;
            int countSLMovieTicket = 0;

            foreach(user u in users)
            {
                if(u.UserName == userLogin.UserName)
                {
                    //kiểm tra xem người đang đăng nhập có mua vé nào chưa
                    //chưa mua thì thôi mua rồi thì cộng từng vé lại
                    if(u.MovieTicket == null)
                    {

                    } else
                    {
                        for(int i=0; i < u.MovieTicket.Count; i++)
                        {
                            countSLMovieTicket += u.MovieTicket[i].NumberOfTicket;
                        }
                        numberOfMovieTicketInCart.InnerText = countSLMovieTicket.ToString();
                    }
                }
            }
        }
    }
}