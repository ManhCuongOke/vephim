<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="trangchu.aspx.cs" Inherits="WebApplication1.trangchu" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="assets/css/reset.css">
    <link rel="stylesheet" href="assets/css/trangchu.css">
    <link rel="stylesheet" href="assets/css/global.css">
    <link rel="stylesheet" href="assets/fonts/css/all.css">
    <title>Trang chủ</title>
</head>

<body>
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

            <div class="slider">
                <div class="owl-carousel owl-theme">
                    <!-- <div class="item">
                        <div> <img src="assets/images/slider/in-search-of-tomorrow-poster.webp" alt=""></div>
                    </div> -->
                    <!-- <div class="item">
                        <div> <img src="assets/images/product-item/LuanAnhHung9.jpg" alt=""></div>
                    </div> -->
                    <div class="item">
                        <div> <img src="assets/images/banner/HocChauPhuNhan.jpg" alt=""></div>
                    </div>
                </div>
            </div>

            <div class="banner-1">
                <ul class="banner-container-1">
                    <li class="banner-items">
                        <img src="assets/images/banner/DongCung1.jpg" alt="">
                        <div class="add">
                            <p>Vé chiếu theo rap</p>
                            <a href="movieTicket.aspx?id=1">Xem Thêm</a>
                        </div>
                    </li>
                    <li class="banner-items">
                        <img src="assets/images/banner/KhanhDuNien3.jpg" alt="">
                        <div class="add">
                            <p>Vé chiếu theo giờ</p>
                            <a href="movieTicket.aspx?id=4">Xem Thêm</a>
                        </div>
                    </li>
                    <li class="banner-items clearfix">
                        <img src="assets/images/banner/NhatKienKhuynhTam5.jpg" alt="">
                        <div class="add">
                            <p>Vé chiếu theo phim</p>
                            <a href="movieTicket.aspx?id=10">Xem thêm</a>
                        </div>
                    </li>
                </ul>
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

            <div class="banner-2">
                <ul class="banner-container-2">
                    <li class="banner-items">
                        <img src="assets/images/banner/HocChauPhuNhan.jpg" alt="">
                        <div class="more-info">
                            <p>Khuyến mãi tới 50%</p>
                            <h2>THỎA SỨC XEM THẢ GA</h2>
                            <a href="movieTicket.aspx?id=2">Xem thêm</a>
                        </div>
                    </li>
                    <li class="banner-items">
                        <img src="assets/images/banner/LuanAnhHung3.jpg" alt="">
                        <div class="more-info">
                            <p>BOUILLABAISSE</p>
                            <h2>SALAD KIỂU PHÁP</h2>
                            <a href="movieTicket.aspx?id=5">Xem thêm</a>
                        </div>
                    </li>
                    <li class="banner-items">
                        <img src="assets/images/banner/NhatKienKhuynhTam2.jpg" alt="">
                        <div class="more-info">
                            <p>Sản phẩm mới</p>
                            <h2>BUỔI SÁNG HEALTHY</h2>
                            <a href="movieTicket.aspx?id=10">Xem thêm</a>
                    </li>
                </ul>
            </div>

            <div class="product-2">
                <div class="product-header">
                    <h1>Vé phim bán chạy</h1>
                </div>

                <ul class="product-container-2">
                    <li class="product-items">
                        <a href="movieTicket.aspx?id=1"><img src="assets/images/product-item-2/DongCung1.jpg" alt=""></a>
                        <a href="movieTicket.aspx?id=1">Đông cung</a>
                        <span class="text-red">20.000 đ</span>
                        <span class="text-line-through">50.000 đ</span>
                    </li>
                    <li class="product-items">
                        <a href="movieTicket.aspx?id=2"><img src="assets/images/product-item-2/HocChauPhuNhan4.jpg" alt=""></a>
                        <a href="movieTicket.aspx?id=2">Hộc châu phu nhân</a>
                        <span class="text-red">120.000 đ</span>
                        <span class="text-line-through">150.000 đ</span>
                    </li>
                    <li class="product-items">
                        <a href=""><img src="assets/images/product-item-2/LuuLyMyNhanSat1.jpg" alt=""></a>
                        <a href="">Lưu ly mỹ nhân sát</a>
                        <span class="text-red">90.000 đ</span>
                        <span class="text-line-through">120.000 đ</span>
                    </li>
                    <li class="product-items">
                        <a href="movieTicket.aspx?id=6"><img src="assets/images/product-item-2/MongHoaLuc5.jpg" alt=""></a>
                        <a href="movieTicket.aspx?id=6">Mộng hoa lục</a>
                        <span class="text-red">90.000 đ</span>
                    </li>
                    <li class="product-items">
                        <a href="movieTicket.aspx?id=12"><img src="assets/images/product-item-2/PhuTheSongKieuTruyen1.jpg" alt=""></a>
                        <a href="movieTicket.aspx?id=12">Phù thế song kiều truyện</a>
                        <span class="text-red">150.000 đ</span>
                    </li>
                    <li class="product-items">
                        <a href="movieTicket.aspx?id=9"><img src="assets/images/product-item-2/NgoLong1.jpg" alt=""></a>
                        <a href="movieTicket.aspx?id=9">Ngộ long</a>
                        <span class="text-red">100.000 đ</span>
                        <span class="text-line-through">200.000 đ</span>
                    </li>
                    <li class="product-items">
                        <a href="movieTicket.aspx?id=15"><img src="assets/images/product-item-2/TranhThienHa1.jpg" alt=""></a>
                        <a href="movieTicket.aspx?id=15">Tranh thiên hạ</a>
                        <span class="text-red">40.000 đ</span>
                        <span class="text-line-through">50.000 đ</span>
                    </li>
                    <li class="product-items">
                        <a href="movieTicket.aspx?id=16"><img src="assets/images/product-item-2/TranTinhLenh5.jpg" alt=""></a>
                        <a href="movieTicket.aspx?id=16">Trần tình lệnh</a>
                        <span class="text-red">20.000 đ</span>
                        <span class="text-line-through">50.000 đ</span>
                    </li>
                    <li class="product-items">
                        <a href="movieTicket.aspx?id=17"><img src="assets/images/product-item-2/TuyetTrungHanDaoHanh6.jpg" alt=""></a>
                        <a href="movieTicket.aspx?id=17">Tuyết trung hãn đao hành</a>
                        <span class="text-red">20.000 đ</span>
                        <span class="text-line-through">30.000 đ</span>
                    </li>
                    <li class="product-items">
                        <a href="movieTicket.aspx?id=18"><img src="assets/images/product-item-2/YThienDoLongKy1.jpg" alt=""></a>
                        <a href="movieTicket.aspx?id=18">Ỷ thiên đồ long ký</a>
                        <span class="text-red">20.000 đ</span>
                        <span class="text-line-through">30.000 đ</span>
                    </li>
                </ul>

            </div>

            <div class="introduce">
                <div class="introduce-left">
                    <img src="assets/images/VeChungToi.jpg" alt="">
                    <div class="add">
                        <h2>Về chúng tôi</h2>
                        <a href="gioithieu.aspx">Xem ngay</a>
                    </div>
                </div>

                <div class="introduce-right">
                    <a href="trangchu.aspx"  class="text-red">HOU Movies</a> được biết đến với cụm rạp đầu tiên với 5 phòng
                    chiếu vào năm
                    2010, tại Maximark 3/2 (nay là Vincom 3/2). Từ 2014, Movies Online là cụm rạp của doanh nghiệp Việt
                    Nam duy nhất có sức phát triển mạnh mẽ, qua việc liên tục mở thêm các vị trí rạp mới, ở những khu
                    vực đắc địa của Thành phố Hồ Chí Minh, Hà Nội, Huế và các tỉnh thành khác.
                    Một vài gợi ý cho nội dung trang Giới thiệu:
                    Bạn là ai
                    Giá trị kinh doanh của bạn là gì
                    Địa chỉ cửa hàng
                    Bạn đã kinh doanh trong ngành hàng này bao lâu rồi
                    Bạn kinh doanh ngành hàng online được bao lâu
                    Đội ngũ của bạn gồm những ai
                    Thông tin liên hệ
                    Liên kết đến các trang mạng xã hội (Twitter, Facebook)
                    Bạn có thể chỉnh sửa hoặc xoá bài viết này tại đây hoặc thêm những bài viết mới trong phần quản lý
                    Trang nội dung.
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

    <%--<p id="counter" runat="server"></p>--%>
    <%--<div id="thongBaoDiaChiIPNguoiThamGia" runat="server" style="text-align : center; padding-top : 20px;"></div>--%>
        </div>
        <!-- end footer -->

    </div>

    <script src="assets/js/trangchu.js"></script>


</body>

</html>
