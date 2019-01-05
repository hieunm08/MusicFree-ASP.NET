<%@ Page Language="C#" AutoEventWireup="true" CodeFile="chude.aspx.cs" Inherits="chude" %>

<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>Chủ đề</title>
<link href="css/chude.css" rel="stylesheet">
</head>

<body>
	<form id="form1" runat="server">
	<div id="wrapper">
    	<header>
        	<a href="trangchu.aspx"><img src="images/logo.png"></a>
            <input type="text" placeholder="    Từ khóa tìm kiếm...">
            <a href="#"><img src="images/search.png" class="icon"></a>
            <div class="menu-top">
            	<a href="dangky.aspx">Đăng ký / </a><a href="dangnhap.aspx">Đăng nhập</a>
            </div>
        </header>
        
        
        <nav>
        	<ul>
            	<li><a href="baihat.aspx">Bài hát</a></li>
                <li><a href="chude.aspx">Chủ đề</a></li>
                <li><a href="playlist.aspx">Playlist</a></li>
                <li><a href="canhan.aspx">Trang cá nhân</a></li>
            </ul>
        </nav>
        
        <article>
        	<h2>Chủ đề</h2>
            <asp:DataList ID="DataList1" runat="server" DataKeyField="MaTheLoai" DataSourceID="SqlDataSource1" RepeatColumns="3">
                <ItemTemplate>               
                <div class="cd">
            	    <a href="#"><img src="images/cd1.jpg" ></a>
                    <h2><a href="#">
                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# Eval("MaTheLoai", "~/nhacchude.aspx?L={0}") %>' Text='<%# Eval("TenTheLoai") %>'></asp:HyperLink></a></h2>
                    <p>Bolero là thể loại nhạc trữ tình với giai điệu chậm, có xuất xứ từ các nước Latin. Thể loại này bắt đầu du nhập vào Việt Nam từ những năm 1950 với tên 				gọi bình dân như </p>
                </div>
                </ItemTemplate>


            </asp:DataList>
            
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MUSIC %>" SelectCommand="SELECT [MaTheLoai], [TenTheLoai] FROM [TheLoai]"></asp:SqlDataSource>
           
         
            
        </article>
        
          <div class="clear"></div>
        <footer>
            <p>Giấy phép MXH số 311/GP-BTTTT do Bộ Thông Tin và Truyền thông cấp ngày 05/05/2018</p>
            	
        </footer>        
    </div>
    </form>
</body>
</html>

