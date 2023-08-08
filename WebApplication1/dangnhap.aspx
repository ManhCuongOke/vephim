<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="dangnhap.aspx.cs" Inherits="WebApplication1.dangnhap" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
            <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="assets/css/reset.css">
    <link rel="stylesheet" href="assets/css/dangnhap.css">
    <link rel="stylesheet" href="assets/css/global.css">
    <link rel="stylesheet" href="assets/fonts/css/all.css">
    <title>Đăng Nhập</title>
</head>
<body>
    <form  runat="server" method="post" id="login">
     <div id="wrapper">
        <div id="header">
             <div class="TenThuongHieu">
                 <a href="trangchu.aspx" class="text-red">HOU Movies</a>
             </div>
             <div class="DangNhap">
                Đăng Nhập
             </div>

        </div>
         <div class="line-white"></div>

        <!-- end header -->
       <div id="wp-content">
           

         <div class="container">
                <div class="form-head">
                    Đăng Nhập
                </div>

                <div id="canhbao" runat="server"></div>

                <div class="name">
                    <asp:Label ID="lbname" runat="server" Text="lbname">Tên Đăng Nhập</asp:Label>
                    <input type="text" name="name" value="" id="tbname" runat="server"/>
                </div>

                <div class="password">
                    <asp:Label ID="lbpassword" runat="server" Text="lbpassword">Mật Khẩu</asp:Label>
                    <input type="password" name="repassword" value="" id="password" runat="server"/>
                </div>

                <div class="dangnhap-huy">
                    <input type="submit" name="dangnhap" value="Đăng Nhập" id="dangnhap"/>
                    <input type="reset" name="huy" value="Hủy" id="huy" runat="server"/>
                </div>

                <div class="dangnhap">
                    <span>Bạn đã có tài khoản chưa ?</span>   
                    <a href="dangky.aspx">Đăng Ký</a>
                </div>
                
         </div>
        </div>

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
    </form>

        <script src="assets/js/dangnhap.js"></script>
</body>
</html>
