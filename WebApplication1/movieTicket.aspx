<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="movieTicket.aspx.cs" Inherits="WebApplication1.movieTicket" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="assets/css/reset.css">
    <link rel="stylesheet" href="assets/css/movieTicket.css">
    <link rel="stylesheet" href="assets/css/global.css">
    <link rel="stylesheet" href="assets/fonts/css/all.css">
    <title>Vé xem phim</title>
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
                    <a href="giohang.aspx"><i class="fa-solid fa-cart-shopping"><span id="numberOfMovieTicketInCart" runat="server"></span> </i></a>
                    <span id="nameMovieHeader" runat="server"></span>
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

        <div class="line-white"></div>

        <div id="wp-content">
            <div class="head-content">
                <h1>Thông tin chi tiết</h1>
            </div>

            <div class="container-content">
                <div class="container-left">
                    <ul class="list-img">
                        <li class="item-img" id="movieImg1" runat="server"> 
                        </li>
                        <li class="item-img" id="movieImg2" runat="server"></li>
                        <li class="item-img" id="movieImg3" runat="server"></li>
                        <li class="item-img" id="movieImg4" runat="server"></li>
                    </ul>
                </div>

                <div class="container-right">
                    <div class="movie-name" id="movieNameServer" runat="server"></div>
                    <div class="line-white"></div>
                    <div class="movie-title" id="movieTitleServer" runat="server"></div>
                    <div class="line-white"></div>
                    <div class="movie-ticket-control">
                        <div class="btn-minus-add">
                            <input class="minus is-form" type="button" value="-" onclick="minus()"/>
                            <input aria-label="quantity" class="input-qty" max="Số tối đa" min="1" name="" type="number" value="1" runat="server" id="numberTicket"/>
                            <input class="plus is-form" type="button" value="+" onclick ="plus()"/>
                        </div>

                        <div class="btn-buy-watchTrailer">
                            <button type="button" class="btn-buy-item" id="AddItemToCart" runat="server" onserverclick="AddItemToCart_ServerClick">Thêm vào giỏ hàng</button>
                            <button type="button" class="btn-buy-item">Xem Trailer</button>
                        </div>
                    </div>
                <div class="movie-description">
                    <h2>Nội dung</h2>
                    <p id="movieDescriptionServer" runat="server"></p>
                </div>

                <div class="movie-national">
                    <p>Quốc giá : <span id="movieNationalServer" runat="server"></span></p>
                </div>

                <div class="movie-time">
                    <p>Thời lượng : <span id="movieTimeServer" runat="server"></span> phút</p>
                </div>

                <div class="movie-yearStart">
                    <p>Năm ra mắt : <span id="movieYearStartServer" runat="server"></span></p>
                </div>

                <div class="movie-genre">
                    <p>Thể loại : <span id="movieGenreServer" runat="server"></span></p>
                </div>
            </div>
            </div>

            
            <div class="product-1">
                <div class="product-header">
                    <h1>Vé phim mới</h1>
                </div>

                <ul class="product-container-1">
                    <li class="product-items">
                        <a href="movieTicket.aspx?id=4"><img src="assets/images/product-item/KhanhDuNien6.jpg" alt=""></a>
                        <a href="movieTicket.aspx?id=4">Khánh dư liên</a>
                        <span class="text-red">100.000 đ</span>
                        <span class="text-white text-line-through">130.000 đ</span>
                    </li>
                    <li class="product-items">
                        <a href="movieTicket.aspx?id=5"><img src="assets/images/product-item/LuanAnhHung9.jpg" alt=""></a>
                        <a href="movieTicket.aspx?id=5">Luận anh hùng</a>
                        <span class="text-red">250.000 đ</span>
                        <span class="text-white text-line-through">300.000 đ</span>
                    </li>
                    <li class="product-items">
                        <a href="movieTicket.aspx?id=10"><img src="assets/images/product-item/NhatKienKhuynhTam6.jpg" alt=""></a>
                        <a href="movieTicket.aspx?id=10">Nhất kiến khuynh tâm</a>
                        <span class="text-red">54.000 đ</span>
                        <span class="text-white text-line-through">65.000 đ</span>
                    </li>
                    <li class="product-items">
                        <a href="movieTicket.aspx?id=13"><img src="assets/images/product-item/SonHaLenh3.jpg" alt=""></a>
                        <a href="movieTicket.aspx?id=13">Sơn hà lệnh</a>
                        <span class="text-red">150.000 đ</span>
                        <span class="text-white text-line-through">160.000 đ</span>
                    </li>
                    <li class="product-items">
                        <a href="movieTicket.aspx?id=17"><img src="assets/images/product-item/TuyetTrungHanDaoHanh1.jpg" alt=""></a>
                        <a href="movieTicket.aspx?id=17">Tuyết trung hãn đao hành</a>
                        <span class="text-red">20.000 đ</span>
                        <span class="text-white text-line-through">30.000 đ</span>
                    </li>
                </ul>
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

    <script src="assets/js/movieTicket.js"></script>


</body>


</html>
