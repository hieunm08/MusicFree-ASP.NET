<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="baihat.aspx.cs" Inherits="baihat" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="title">
        <a href="#">Bài hát </a>
    </div>
    <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" Width="833px" >
        <ItemTemplate>
            <div class="bh">
                <a href="#">
                    <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("DanAnh") %>' Width="66.6px" Height="66.6px" />
                </a>
                <h2><a href="nghenhac.html">
                    <asp:HyperLink ID="HyperLink1" runat="server" Text='<%# Eval("TenBH") %>' NavigateUrl='<%# Eval("MaBH", "~/nghenhac.aspx?M={0}") %>'></asp:HyperLink></a></h2>
                <a href="#"><span><asp:Label ID="Label2" runat="server" Text='<%# Eval("TenCaSi") %>'></asp:Label></span></a>
            </div>
        </ItemTemplate>
    </asp:DataList>
   
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MUSIC %>" SelectCommand="SELECT [MaBH], [DanAnh], [DuongDan], [TenBH], [TenCaSi] FROM [BaiHat]"></asp:SqlDataSource>
   
</asp:Content>

