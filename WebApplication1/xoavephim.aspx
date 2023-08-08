<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="xoavephim.aspx.cs" Inherits="WebApplication1.xoavephim" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Bạn có muốn xóa không
            <input type="button" name="name" value="Có" id="yes" runat="server" onserverclick="Xoa"/>
            <input type="button" name="name" value="Không" id="No" runat="server" onserverclick="Khong"/>

        </div>
    </form>
</body>
</html>
