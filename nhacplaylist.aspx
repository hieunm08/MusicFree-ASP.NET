<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="nhacplaylist.aspx.cs" Inherits="nhacplaylist" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
            <div class="title">
                <a href="#">
                    <asp:Label ID="lbl_tenplaylist" runat="server" Text="Label">Playlist của tôi</asp:Label>
            </div>

    <asp:DataList ID="DataList1" runat="server"  Width="833px">
        <ItemTemplate>
            <div class="bh">
                <a href="nghenhac.html">
                    <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("DanAnh") %>' Width="66.6px" Height="66.6px" />
                </a>
                <h2><a href="nghenhac.html">
                    <asp:HyperLink ID="HyperLink1" runat="server" Text='<%# Eval("TenBH") %>' NavigateUrl='<%# Eval("MaBH", "~/nghenhac.aspx?M={0}") %>'></asp:HyperLink></a></h2>
                <a href="#"><span><asp:Label ID="Label2" runat="server" Text='<%# Eval("TenCaSi") %>'></asp:Label></span></a>
                
            </div>
        </ItemTemplate>
    </asp:DataList>
   
 
</asp:Content>

