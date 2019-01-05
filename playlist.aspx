<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="playlist.aspx.cs" Inherits="playlist" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="title">
        <h2>Playlist của tôi </h2>
       <asp:Button ID="chinhsua" runat="server" Text="Tạo mới playlist" OnClick="btn_Update_Pl_Click"/>
    </div>
    
    <asp:MultiView ID="MultiView1" runat="server">



        <asp:View ID="View1" runat="server">
            <div class="bh">
        <a href="#">
        <img src="images/pl.jpg" /></a> <a href="#">
        <h2><a href="nhacplaylist.aspx">
            <asp:Label ID="lbl_playlist" runat="server" Text="Label"></asp:Label></a></h2>
        <div class="icon">
            <a href="#"></a>
            
    </div>
            </div>
        </asp:View>

        <asp:View ID="View2" runat="server">
    
             <form>
    
        <div>
            <label>
            Mã Tài Khoản:</label>
            <asp:TextBox ID="txt_matk" runat="server" Enabled="false"></asp:TextBox>
        </div>
                 
        
        <div>
            <label>
            Tên Playlist:</label>
            <asp:TextBox ID="txt_playlist" runat="server"></asp:TextBox>
        </div>
        <div class="login">
            <asp:Button ID="Button2" runat="server" Text="Button" OnClick="  btn_add_Pl"/>
        </div>
    </form>



     
            
        </asp:View>
    </asp:MultiView>
</asp:Content>

