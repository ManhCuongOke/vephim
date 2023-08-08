using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class movieTicket : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //hiển user đang đăng nhập
            hienUserLogin();

            //lấy id từ url
            int id = int.Parse(Request.QueryString["id"]);

            List<movie> movies = Application["listMovie"] as List<movie>;

            foreach(movie mv in movies)
            {
                if(mv.ID == id)
                {
                    movieImg1.InnerHtml = "<img src='" + mv.MovieImg + "'/>";
                    movieImg2.InnerHtml = "<img src='" + mv.MovieImg + "'/>";
                    movieImg3.InnerHtml = "<img src='" + mv.MovieImg + "'/>";
                    movieImg4.InnerHtml = "<img src='" + mv.MovieImg + "'/>";
                    movieNameServer.InnerText = mv.MovieName;
                    movieTitleServer.InnerText = mv.MovieTitle;
                    movieDescriptionServer.InnerText = mv.movieDescription;
                    movieNationalServer.InnerText = mv.MovieNational;
                    movieTimeServer.InnerText = mv.MovieTime.ToString();
                    movieYearStartServer.InnerText = mv.MovieYearStart.ToString();
                    movieGenreServer.InnerText = mv.MovieGenre;
                    break;
                }
            }


        }

        public void hienUserLogin()
        {
            user userLogin = Session["userLogin"] as user;
            hienSoLuongOfMovieTicketInCart(userLogin);
            if (userLogin.UserName != null)
            {
                login.InnerHtml = "<span class='DangKi'> Xin chào, " + userLogin.UserName + " |" + "</span>"
                              + "<a href='DangXuat.aspx' class='DangNhap'>Đắng xuất</a>";
            }
        }

        protected void AddItemToCart_ServerClick(object sender, EventArgs e)
        {
            user userLogin = Session["userLogin"] as user;

            //kiểm tra người dùng đăng nhập chưa chưa đăng nhập mà muốn thêm vào giỏ hàng thì bắt đăng nhập
            if (userLogin.UserName == null)
            {
                Response.Write("<script>alert('Bạn cần đăng nhập để tiếp tục thực hiện chức năng này') </script>");
            }
            else
            {
                //lấy giá trị id trên url và numberTicket
                int id = int.Parse(Request.QueryString["id"]);
                int numberOfTicket = int.Parse(numberTicket.Value.ToString());

                List<user> users = Application["userList"] as List<user>;

                //gán giá trị id và numberTicket cho movieTicket
                MovieTicket movieTicket = new MovieTicket(id, numberOfTicket);

                foreach (user u in users)
                {
                    //tìm UserName trùng với UserName đang đăng nhập và add id và numberOfTicket cho user đó
                    if (u.UserName == userLogin.UserName)
                    {
                        bool flagExit = false;
                        for (int i = 0; i < u.MovieTicket.Count; i++)
                        {
                            if (u.MovieTicket[i].ID == id)
                            {
                                u.MovieTicket[i].NumberOfTicket += numberOfTicket;
                                flagExit = true;
                            }
                        }

                        if (!flagExit)
                        {
                            u.MovieTicket.Add(movieTicket);
                        }
                    }
                }

                Application["userList"] = users;
                hienSoLuongOfMovieTicketInCart(userLogin);
                //hienNameOfMovieTicketInCart();


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
                     if(u.MovieTicket == null)
                    {

                    }
                     else
                    {
                        for(int i=0; i< u.MovieTicket.Count; i++)
                        {
                            countSLMovieTicket += u.MovieTicket[i].NumberOfTicket;
                        }
                        numberOfMovieTicketInCart.InnerText = countSLMovieTicket.ToString();
                    }
                }
            }

            
        }

        //public void hienNameOfMovieTicketInCart()
        //{
        //    //khai báo danh sách
        //    List<user> users = Application["userList"] as List<user>;
        //    List<movie> movies = Application["listMovie"] as List<movie>;
        //    user userLogin = Session["userLogin"] as user;

        //    string html = "";

        //    foreach (user u in users)
        //    {
        //        //kiểm tra đúng user và user tồn tại
        //        if (u.UserName == userLogin.UserName)
        //        {
        //            for (int i = 0; i < u.MovieTicket.Count; i++)
        //            {

        //                for (int j = 0; j < movies.Count; j++)
        //                {
        //                    //kiểu tra xem nó có trùng id nhau không nếu trùng thì hiện lên ticketMovie
        //                    if (u.MovieTicket[i].ID == movies[j].ID)
        //                    {
        //                        html = movies[j].MovieName;
        //                    }

        //                }
        //            }
        //            break;
        //        }
        //    }
        //    nameMovieHeader.InnerHtml = html;
        //}



    }
}