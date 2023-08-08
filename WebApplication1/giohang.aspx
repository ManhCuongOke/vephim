<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="giohang.aspx.cs" Inherits="WebApplication1.giohang" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="assets/css/reset.css">
    <link rel="stylesheet" href="assets/css/giohang.css">
    <link rel="stylesheet" href="assets/css/global.css">
    <link rel="stylesheet" href="assets/fonts/css/all.css">
    <title>GIỏ hàng</title>
</head>

<body>
    <form runat="server" id="from1">
    <div id="wrapper">
         <div id="header">
            <div class="DangKi-DangNhap" id="login" runat="server">
                <div class="DangKi">
                    <a href="dangky.aspx"> Đăng Ký |</a>
                </div>

                <div class="DangNhap">
                    <a href="dangnhap.aspx">Đăng Nhập</a>
                </div>
            </div>

            <div class="container">
                <div class="navbar-toggle">
                    <i class="fa-solid fa-bars"></i>
                </div>

                <div class="TenThuongHieu">
                    <a href="trangchu.aspx" class="text-red">HOU Movies</a>
                </div>

                <nav>
                    <ul id="main-menu">
                        <li><a href="trangchu.aspx" class="text-red">Trang Chủ</a></li>
                        <li><a href="sanpham.aspx" class="text-white">Sản Phẩm</a></li>
                        <li><a href="trangchu.aspx" class="text-white">Tin Tức</a></li>
                        <li><a href="gioithieu.aspx" class="text-white">Giới Thiệu</a></li>
                    </ul>
                </nav>

                <div class="giohang">
                    <a href="giohang.aspx"><i class="fa-solid fa-cart-shopping"><span id="numberOfMovieTicketInCart" runat="server"></span></i></a>
                </div>


                
            </div>


            <nav>
                <ul id="menu-response">
                    <li><a href="trangchu.aspx">Trang Chủ</a></li>
                    <li><a href="sanpham.aspx" class="text-white">Sản Phẩm</a></li>
                    <li><a href="trangchu.aspx" class="text-white">Tin Tức</a></li>
                    <li><a href="gioithieu.aspx" class="text-white">Giới Thiệu</a></li>
                </ul>
            </nav>


        </div>
        <!-- end header -->

        <div id="wp-content">
            <div class="line-white"></div>
            <div id="header-content">
                <div class="title">
                    <h1>GIỎ HÀNG CỦA BẠN</h1>
                </div>

                <div id="soluongTicket" runat="server">

                </div>
                <hr width="30%"/>
            </div>

            <div class="container">
                <div class="container-left">
                    <div class="container-left-top" id="ticketMovie" runat="server"></div>

                    <div class="chinhsach">
                        <h2>Chính sách</h2>
                        <p>Vé sau khi mua sẽ được đổi trả sau 40 ngày</p>
                        <p>Vé sau khi mua sẽ được đổi trả sau 40 ngày</p>
                        <p>Vé sau khi mua sẽ được đổi trả sau 40 ngày</p>
                        <p>Vé sau khi mua sẽ được đổi trả sau 40 ngày</p>
                        <p>Vé sau khi mua sẽ được đổi trả sau 40 ngày</p>
                    </div>
                </div>

                <div class="container-right">
                    <h2>Thông tin đơn hàng</h2>

                    <div class="padding-top-bottom-15px border-bottom">Tổng tiền (VND): <span id="sumMoney" runat="server">0</span></div>
                    <button type="button" id="pay">Thanh toán</button>
                </div>
            </div>
            <div class="line-white"></div>
        </div>
        <!-- end wp-content -->

        <div id="footer">

            <div class="container">
                <div class="introduce">
                    <h2>Giới thiệu</h2>
                    <p><a href="trangchu.aspx" class="text-red">HOU Movies </a> trang nua vé phim trực tuyến</p>
                </div>

                <div class="contact-information">
                    <h2>Thông tin liên hệ</h2>
                    <div class="map">
                        <i class="fa-solid fa-map-pin"></i>
                        <span>Số 96 Định Công, Phương Liệt, Thanh Xuân, Hà Nội</span>
                    </div>
                    <div class="phone">
                        <i class="fa-solid fa-phone-volume"></i>
                        <span>0354855879 hoặc 0977354956</span>
                    </div>
                    <div class="gmail">
                        <i class="fa-solid fa-envelope"></i>
                        <span>20a10010140@students.hou.edu.vn</span>
                    </div>
                </div>

                <div class="associate">
                    <h2>Liên kết</h2>
                    <ul>
                        <li><a href="">Sản phẩm khuyến mãi</a></li>
                        <li><a href="">Sản phẩm nổi bật</a></li>
                        <li><a href="">Tất cả sản phẩm</a></li>
                    </ul>
                </div>

                <div class="support">
                    <h2>Hỗ trợ</h2>

                    <ul>
                        <li><a href="">Tìm kiếm</a></li>
                        <li><a href="">Giới thiệu</a></li>
                        <li><a href="">Chính sách đổi trả</a></li>
                        <li><a href="">Chính sách bảo mật</a></li>
                        <li><a href="">Điều khoản dịch vụ</a></li>
                        <li><a href="">Liên hệ</a></li>
                    </ul>
                </div>

            </div>


        </div>
        <!-- end footer -->

    </div>
    </form>

    <script src="assets/js/giohang.js"></script>
</body>
</html>
