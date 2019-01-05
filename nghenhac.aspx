<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="nghenhac.aspx.cs" Inherits="nghenhac" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="cn">
        <h2 style="font-size:1.2em;">
            <asp:Label ID="lbltieude" runat="server" Text="Label" ></asp:Label></h2>
        <span id="casi">
            <asp:Label ID="lblcasi" runat="server" Text="Label"></asp:Label></span>
        <h3>Thể loại: </h3>
        <span id="tl">
            <asp:Label ID="lbltheloai" runat="server" Text="Label"></asp:Label></span>
        <h3>Ngày Đăng: </h3>
        <span id="ngay">
            <asp:Label ID="lblngay" runat="server" Text="Label"></asp:Label></span>
        <h3>Bạn đang nghe bài hát</h3>
        <span id="bai">
            <asp:Label ID="lblbaihat" runat="server" Text="Label"></asp:Label></span>
    </div>
    <div class="hienthi">
        <div id="Play__" Runat="server"></div>
     
        <div class="tainhac">
            <a href="#">
            <asp:ImageButton ID="ImageButton2" ImageUrl="images/add.jpg" runat="server" Width="40px" Height="30px"  OnClick="ImageButton2_Click" /></a><span>Thêm vào playlist</span> 
            <asp:ImageButton ID="ImageButton1" ImageUrl="images/dow.jpg" runat="server" Width="40px" Height="30px"  OnClick="ImageButton1_Click" /><span>Tải về máy</span>
        </div>
    </div>
    <div class="loibh">
        <h3>Lời bài hát</h3>
        <p>
            <asp:Label ID="lbllbh" runat="server" Text="Label"></asp:Label>
          </p>
    </div>
    
</asp:Content>

