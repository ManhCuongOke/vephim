<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="sanpham.aspx.cs" Inherits="WebApplication1.sanpham" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="assets/css/reset.css">
    <link rel="stylesheet" href="assets/css/sanpham.css">
    <link rel="stylesheet" href="assets/css/global.css">
    <link rel="stylesheet" href="assets/fonts/css/all.css">
    <title>Sản Phẩm</title>
</head>

<body>
    <form id="form1" runat="server">
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
                        <li><a href="trangchu.aspx" class="text-white">Trang Chủ</a></li>
                        <li><a href="sanpham.aspx" class="text-red">Sản Phẩm</a></li>
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
                <div class="product-header" id="soluongfind" runat="server">
                    Tất cả các vé phim
                </div>


                <div class="product-all">
                    <div class="movie-ticket-price">
                        <div class="header-movie-ticket-price">
                            Giá vé phim
                        </div>

                        <div id="radioPrice">
                            <input type="radio" name="price" id="priceOne" runat="server" value="50000">
                            <label for="price-50">Dưới 50.000đ</label><br>
                            <input type="radio" name="price" id="priceTwo" runat="server" value="100000" >
                            <label for="price-50-100">50.000đ - 100.000đ</label><br>
                            <input type="radio" name="price" id="price-100-150">
                            <label for="price-100-150">100.000đ - 150.000đ</label><br>
                            <input type="radio" name="price" id="price-150-200">
                            <label for="price-150-200">150.000đ - 200.000đ</label><br>
                            <input type="radio" name="price" id="price-200-250">
                            <label for="price-200-250">200.000đ - 250.000đ</label><br>
                            <input type="radio" name="price" id="price-250">
                            <label for="price-250">Trên 250.000đ</label>
                                                        
                        </div>

                        <div class="header-find-price">
                            Tìm kiếm
                        </div>

                        <div id="findPrice">
                            <input type="text" value="" placehoder="Tìm kiếm" id="inputtimkiem" runat="server"/>
                            <button type="button" id="submittimkiem" runat="server" onserverclick="findMovie">Tìm kiếm</button>
                        </div>

                        <button type="button" id="Button2" runat="server" onserverclick="SapXepGiamDan">Sắp Xếp Giảm Dần</button>
                    </div>

                    <div class="container"  id="moviesContainer"  runat="server">
                        <ul class="list-product">
                            <li class="product-items">
                                <a href="movieTicket.aspx?id=1"><img src="assets/images/product-all/DongCung1.jpg" alt=""></a>
                                <div class="more-info">
                                    <a href="movieTicket.aspx?id=1">Đông cung</a>
                                    <span class="text-red">20.000đ</span>
                                    <span class="text-line-through">50.000đ</span>
                                </div>
                            </li>
                            <li class="product-items">
                                <a href="movieTicket.aspx?id=2"><img src="assets/images/product-all/HocChauPhuNhan4.jpg" alt=""></a>
                                <div class="more-info">
                                    <a href="movieTicket.aspx?id=2">Hộc châu phu nhân</a>
                                    <span class="text-red">120.000đ</span>
                                    <span class="text-line-through">150.000đ</span>
                                </div>
                            </li>
                            <li class="product-items">
                                <a href="movieTicket.aspx?id=3"><img src="assets/images/product-all/HuongMatTuaKhoiSuong5.jpg" alt=""></a>
                                <div class="more-info">
                                    <a href="movieTicket.aspx?id=3">Hương mật tựa khói sương</a>
                                    <span class="text-red">100.000đ</span>
                                </div>
                            </li>
                            <li class="product-items">
                                <a href="movieTicket.aspx?id=4"><img src="assets/images/product-all/KhanhDuNien3.jpg" alt=""></a>
                                <div class="more-info">
                                    <a href="movieTicket.aspx?id=4">Khánh dư niên</a>
                                    <span class="text-red">100.000đ</span>
                                    <span class="text-line-through">130.000đ</span>
                                </div>
                            </li>
                            <li class="product-items">
                                <a href="movieTicket.aspx?id=5"><img src="assets/images/product-all/LuanAnhHung8.jpg" alt=""></a>
                                <div class="more-info">
                                    <a href="movieTicket.aspx?id=5">Luận anh hùng</a>
                                    <span class="text-red">250.000đ</span>
                                    <span class="text-line-through">300.000đ</span>
                                </div>
                            </li>
                            <li class="product-items">
                                <a href="movieTicket.aspx?id=6"><img src="assets/images/product-all/LuuLyMyNhanSat1.jpg" alt=""></a>
                                <div class="more-info">
                                    <a href="movieTicket.aspx?id=6">Lưu ly mỹ nhân sát</a>
                                    <span class="text-red">90.000đ</span>
                                </div>
                            </li>
                            <li class="product-items">
                                <a href="movieTicket.aspx?id=7"><img src="assets/images/product-all/MoNamChi1.jpg" alt=""></a>
                                <div class="more-info">
                                    <a href="7">Mộ nam chi</a>
                                    <span class="text-red">65.000đ</span>
                                </div>
                            </li>
                            <li class="product-items">
                                <a href="movieTicket.aspx?id=8"><img src="assets/images/product-all/MongHoaLuc5.jpg" alt=""></a>
                                <div class="more-info">
                                    <a href="movieTicket.aspx?id=8">Mộng hoa lục</a>
                                    <span class="text-red">86.000đ</span>
                                    <span class="text-line-through">100.000đ</span>
                                </div>
                            </li>
                            <li class="product-items">
                                <a href="movieTicket.aspx?id=9"><img src="assets/images/product-all/NgoLong1.jpg" alt=""></a>
                                <div class="more-info">
                                    <a href="movieTicket.aspx?id=9">Ngộ long</a>
                                    <span class="text-red">100.000đ</span>
                                    <span class="text-line-through">200.000đ</span>
                                </div>
                            </li>
                            <li class="product-items">
                                <a href="movieTicket.aspx?id=10"><img src="assets/images/product-all/NhatKienKhuynhTam5.jpg" alt=""></a>
                                <div class="more-info">
                                    <a href="movieTicket.aspx?id=10">Nhất kiến khuynh tâm</a>
                                    <span class="text-red">54.000đ</span>
                                    <span class="text-line-through">65.000đ</span>
                                </div>
                            </li>
                            <li class="product-items">
                                <a href="movieTicket.aspx?id=11"><img src="assets/images/product-all/NhuYPhuongPhi1.jpg" alt=""></a>
                                <div class="more-info">
                                    <a href="movieTicket.aspx?id=11">Phư ý phương phi</a>
                                    <span class="text-red">120.000đ</span>
                                </div>
                            </li>
                            <li class="product-items">
                                <a href="movieTicket.aspx?id=12"><img src="assets/images/product-all/PhuTheSongKieuTruyen1.jpg" alt=""></a>
                                <div class="more-info">
                                    <a href="movieTicket.aspx?id=12">Phù thế song kiều truyện</a>
                                    <span class="text-red">150.000đ</span>
                                </div>
                            </li>
                            <li class="product-items">
                                <a href="movieTicket.aspx?id=13"><img src="assets/images/product-all/SonHaLenh4.jpg" alt=""></a>
                                <div class="more-info">
                                    <a href="movieTicket.aspx?id=13">Sơn hà lệnh</a>
                                    <span class="text-red">150.000đ</span>
                                    <span class="text-line-through">160.000đ</span>
                                </div>
                            </li>
                            <li class="product-items">
                                <a href="movieTicket.aspx?id=14"><img src="assets/images/product-all/ThienKimHaoSac3.jpg" alt=""></a>
                                <div class="more-info">
                                    <a href="movieTicket.aspx?id=14">Thiên kim háo sắc</a>
                                    <span class="text-red">60.000đ</span>
                                    <span class="text-line-through">75.000đ</span>
                                </div>
                            </li>
                            <li class="product-items">
                                <a href="movieTicket.aspx?id=15"><img src="assets/images/product-all/TranhThienHa1.jpg" alt=""></a>
                                <div class="more-info">
                                    <a href="movieTicket.aspx?id=15">Tranh thiên hạ</a>
                                    <span class="text-red">40.000đ</span>
                                    <span class="text-line-through">50.000đ</span>
                                </div>
                            </li>
                            <li class="product-items">
                                <a href="movieTicket.aspx?id=16"><img src="assets/images/product-all/TranTinhLenh5.jpg" alt=""></a>
                                <div class="more-info">
                                    <a href="movieTicket.aspx?id=16">Trần tình lệnh</a>
                                    <span class="text-red">60.000đ</span>
                                    <span class="text-line-through">75.000đ</span>
                                </div>
                            </li>
                            <li class="product-items">
                                <a href="movieTicket.aspx?id=17"><img src="assets/images/product-all/TuyetTrungHanDaoHanh6.jpg" alt=""></a>
                                <div class="more-info">
                                    <a href="movieTicket.aspx?id=17">Tuyết trung hãn đạo hành</a>
                                    <span class="text-red">20.000đ</span>
                                    <span class="text-line-through">30.000đ</span>
                                </div>
                            </li>
                            <li class="product-items">
                                <a href="movieTicket.aspx?id=18"><img src="assets/images/product-all/YThienDoLongKy1.jpg" alt=""></a>
                                <div class="more-info">
                                    <a href="movieTicket.aspx?id=18">Ỷ thiên đồ long ký</a>
                                    <span class="text-red">20.000đ</span>
                                    <span class="text-line-through">30.000đ</span>
                                </div>
                            </li>
                            <li class="product-items">
                                <a href="movieTicket.aspx?id=19"><img src="assets/images/product-all/BachPhatVuongPhi1.jpg" alt=""></a>
                                <div class="more-info">
                                    <a href="movieTicket.aspx?id=19">Bạch phát vương phi</a>
                                    <span class="text-red">20.000đ</span>
                                </div>
                            </li>
                            <li class="product-items">
                                <a href="movieTicket.aspx?id=20"><img src="assets/images/product-all/DauPhaThuongKhung1.jpg" alt=""></a>
                                <div class="more-info">
                                    <a href="movieTicket.aspx?id=13">Đầu phá thương khung</a>
                                    <span class="text-red">20.000đ</span>
                                    <span class="text-line-through">26.000đ</span>
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>

            </div>
            <!-- end wp-content -->
            <div class="line-white"></div>

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

    <script src="assets/js/sanpham.js"></script>
</body>
</html>
