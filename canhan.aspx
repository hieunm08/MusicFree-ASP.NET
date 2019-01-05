<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="canhan.aspx.cs" Inherits="canhan" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="title">
        <a href="canhan.aspx">Thông tin cá nhân </a>
        <asp:Button ID="chinhsua" runat="server" Text="Chỉnh sửa" OnClick="btn_cs_Click"/>
    </div>
    
    
   
 
    <div class="cn">
        <h3>Họ và tên: </h3>
        <span id="ten">
            <asp:Label ID="lbl_ten" runat="server" Text="Label"></asp:Label></span>
        <h3>Tuổi: </h3>
        <span id="tuoi">
            <asp:Label ID="lbl_tuoi" runat="server" Text="Label"></asp:Label></span>
        <h3>Email: </h3>
        <span id="email">
            <asp:Label ID="lbl_email" runat="server" Text="Label"></asp:Label></span>
    </div>
</asp:Content>

