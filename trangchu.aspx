<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="trangchu.aspx.cs" Inherits="trangchu" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server" >
    <div class="banner">
        <a href="#">
        <img src="images/banner.jpg" /></a>
    </div>
    <div class="title">
        <a href="#">Bài hát </a>
    </div>

    <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" Width="100%" RepeatColumns="4">
        <ItemTemplate>
            <div class="column">
                <a href="#">
                    <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("DanAnh") %>' Width="180px" Height="180px"/></a>
                <h2><a href="nghenhac.html">
                    <asp:HyperLink ID="HyperLink1" runat="server" Text='<%# Eval("TenBH") %>' NavigateUrl='<%# Eval("MaBH", "~/nghenhac.aspx?M={0}") %>'></asp:HyperLink></a></h2>
                <a href="#">
                    <asp:Label ID="Label2" runat="server" Text='<%# Eval("TenCaSi") %>'></asp:Label></a>
            </div>
        </ItemTemplate>
        </asp:DataList>

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MUSIC %>" SelectCommand="SELECT TOP(8) [DanAnh], [TenBH], [TenCaSi], [MaBH] FROM [BaiHat]"></asp:SqlDataSource>

 
</asp:Content>

