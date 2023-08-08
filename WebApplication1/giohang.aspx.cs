using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class giohang : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            hienUserLogin();
            hienthigiohang();
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

            foreach (user u in users)
            {
                if (u.UserName == userLogin.UserName)
                {
                    if (u.MovieTicket == null)
                    {

                    }
                    else
                    {
                        for (int i = 0; i < u.MovieTicket.Count; i++)
                        {
                            countSLMovieTicket += u.MovieTicket[i].NumberOfTicket;
                        }
                        numberOfMovieTicketInCart.InnerText = countSLMovieTicket.ToString();
                    }
                }
            }
        }

        public void hienthigiohang()
        {
            int sumNumberTicket = 0;
            int sumPay = 0;

            //khai báo danh sách
            List<user> users = Application["userList"] as List<user>;
            List<movie> movies = Application["listMovie"] as List<movie>;
            user userLogin = Session["userLogin"] as user;

            string html = "";

            foreach (user u in users)
            {
                //kiểm tra đúng user và user tồn tại
                if (u.UserName == userLogin.UserName)
                {
                    for (int i = 0; i < u.MovieTicket.Count; i++)
                    {
                        //công số vé rồi hiện lên giỏ hàng
                        sumNumberTicket += u.MovieTicket[i].NumberOfTicket;

                        for (int j = 0; j < movies.Count; j++)
                        {
                            //kiểu tra xem nó có trùng id nhau không nếu trùng thì hiện lên ticketMovie
                            if (u.MovieTicket[i].ID == movies[j].ID)
                            {
                                    html += "<div class='movie-tickets'>" +
                                   "<div class='movie-ticket-left'>" +
                                       "<img class='img-movie-ticket-left' src='" + movies[j].MovieImg + "'/>" +
                                       "<div>" +
                                       "<p class='soluong-movie-ticket-left text-red'>Số lượng : " + u.MovieTicket[i].NumberOfTicket + "</p>" +
                                       "<p class='name-movie-ticket-left text-red'>Tên phim : " + movies[j].MovieName + "</p>" +
                                       "<span class='price-movie-ticket-left text-red'>Giá phim: " + movies[j].MoviePrice + "</span>" +
                                       "<a href='movieTicket.aspx?id=" + movies[j].ID + "'>Quay lại</a>" +
                                       "</div>" +
                                     "</div>" +
                                     "<div class='movie-ticket-right'>" +
                                     "<a href='xoavephim.aspx?id=" + movies[j].ID + "'>Xóa</a>" +
                                     "</div>" +
                                     "</div>";
                                    sumPay += u.MovieTicket[i].NumberOfTicket * movies[j].MoviePrice;
                            }
                            
                        }
                    }
                    break;
                }
            }
            ticketMovie.InnerHtml = html;

            //hiện tổng số tiền
            sumMoney.InnerText = sumPay.ToString();

            //hiện số lượng vé
            soluongTicket.InnerText = "Bạn đang có " + sumNumberTicket + " vé trong giỏ";
        }
    }
}