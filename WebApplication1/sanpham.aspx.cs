using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class sanpham : System.Web.UI.Page
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

            foreach (user u in users)
            {
                if (u.UserName == userLogin.UserName)
                {
                    //kiểm tra xem người đang đăng nhập có mua vé nào chưa
                    //chưa mua thì thôi mua rồi thì cộng từng vé lại
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

        protected void findMovie(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                string html = "";
                string timkiem = inputtimkiem.Value.Trim();
                int soluong = 0;

                List<movie> movies = Application["listMovie"] as List<movie>;

                for (int i = 0; i < movies.Count; i++)
                {
                    if (String.Compare(timkiem.ToLower(), movies[i].MovieName.ToLower(), true) == 0)
                    {
                        html += "<div class='movieFind'>" +
                            "<a href='movieTicket.aspx?id=" + movies[i].ID + "'> <img src='" + movies[i].MovieImg + "'/></a>" +
                            "<a class='movie-name' href='movieTicket.aspx?id=" + movies[i].ID + "'>" + movies[i].MovieName + "</a>" +
                            "<span class='text-red'>" + movies[i].MoviePrice + "</span>" +
                            "</div>";
                        soluong++;
                    }

                    moviesContainer.InnerHtml = html;
                    soluongfind.InnerText = "Tìm thấy " + soluong + " kết quả";
                }
            }
        }

        //protected void findMovieDuoi50(object sender, EventArgs e)
        //{

        //    if (IsPostBack)
        //    {
        //        string html = "";
        //        int price50 = int.Parse(priceOne.Value.ToString());
        //        int price50100 = int.Parse(priceTwo.Value.ToString());
        //        int soluong = 0;

        //        List<movie> movies = Application["listMovie"] as List<movie>;

        //        for (int i = 0; i < movies.Count; i++)
        //        {
        //            if (movies[i].MoviePrice <= price50)
        //            {
        //                html += "<div class='movieFind'>" +
        //                    "<a href='movieTicket.aspx?id=" + movies[i].ID + "'> <img src='" + movies[i].MovieImg + "'/></a>" +
        //                    "<a class='movie-name' href='movieTicket.aspx?id=" + movies[i].ID + "'>" + movies[i].MovieName + "</a>" +
        //                    "<span class='text-red'>" + movies[i].MoviePrice + "</span>" +
        //                    "</div>";

        //                soluong++;
        //            }
        //            if (movies[i].MoviePrice >= price50)
        //            {
        //                if (movies[i].MoviePrice <= price50100)
        //                {
        //                    html += "<div class='movieFind'>" +
        //                    "<a href='movieTicket.aspx?id=" + movies[i].ID + "'> <img src='" + movies[i].MovieImg + "'/></a>" +
        //                    "<a class='movie-name' href='movieTicket.aspx?id=" + movies[i].ID + "'>" + movies[i].MovieName + "</a>" +
        //                    "<span class='text-red'>" + movies[i].MoviePrice + "</span>" +
        //                    "</div>";

        //                    soluong++;
        //                }
        //            }

        //            moviesContainer.InnerHtml = html;
        //            soluongfind.InnerText = "Tìm thấy " + soluong + " kết quả";
        //        }
        //    }
            
        //}

        protected void SapXepGiamDan(object sender, EventArgs e)
        {
            List<movie> movies = Application["listMovie"] as List<movie>;
            string html = "";
            int soluong = 0;
            for (int i = 0; i < movies.Count; i++)
            {
                for (int j=i+1; j < movies.Count; j++)
                {
                    if (movies[i].MoviePrice < movies[j].MoviePrice)
                    {
                        movie temp = movies[i];
                        movies[i] = movies[j];
                        movies[j] = temp;
                    }
                }   
            }

            for (int i = 0; i < movies.Count; i++)
            {
                html += "<div class='movieFind'  style='width: 30%'" +
                            "<a href='movieTicket.aspx?id=" + movies[i].ID + "'> <img src='" + movies[i].MovieImg + "'/></a>" +
                            "<a class='movie-name' href='movieTicket.aspx?id=" + movies[i].ID + "'>" + movies[i].MovieName + "</a>" +
                            "<span class='text-red'>" + movies[i].MoviePrice + "</span>" +
                            "</div>";
                soluong++;
            }
            moviesContainer.InnerHtml = html;
            soluongfind.InnerText = "Tìm thấy " + soluong + " kết quả";
        }
    }    
}