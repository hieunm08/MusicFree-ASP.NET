<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="chinhthongtin.aspx.cs" Inherits="chinhthongtin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h2 style="color:white; font-size:24px;">Cập nhật thông tin cá nhân</h2>
    <div class='menu'>
<ul style="list-style:none; margin-top:15px;">
    <li><a href='chinhthongtin.aspx?TT=BS' >Thông tin cơ bản</a></li>
    <li><a href='chinhthongtin.aspx?TT=MK' >Mật khẩu</a></li>
</ul>
</div>
     <asp:MultiView ID="MultiView1" runat="server">
         <asp:View ID="View1" runat="server">
             <form>
        <div>
            <label>
            Họ và tên:</label>
            <asp:TextBox ID="txt_ten" runat="server"></asp:TextBox>
        </div>
        <div>
            <label>
            Email:</label>
            <asp:TextBox ID="txt_email" runat="server"></asp:TextBox>
        </div>
        
        <div>
            <label>
            Tuổi:</label>
            <asp:TextBox ID="txt_tuoi" runat="server"></asp:TextBox>
        </div>
        <div class="login">
            <asp:Button ID="Button2" runat="server" Text="Button" OnClick="btn_update_tt"/>
        </div>
    </form>


         </asp:View>
    <asp:View ID="View2" runat="server">
            <table border="0" style="width: 80%">
                    <tr>
                        <td class="__left" style="height: 26px; text-align: right;">
                            Mật khẩu mới :</td>
                        <td style="text-align: left; height: 26px;">
                            <asp:TextBox ID="txt_pass" runat="server" TextMode="Password" type="password"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="__left" style="text-align: right">
                            Nhập lại mật khẩu :</td>
                        <td style="text-align: left">
                            <asp:TextBox ID="txt_passnew" runat="server" TextMode="Password" type="password"></asp:TextBox>
                             <strong>
                   <asp:CompareValidator ID="CompareValidator1" runat="server" 
                       ControlToCompare="txt_passnew" ControlToValidate="txt_pass" 
                    ForeColor="White"    ErrorMessage="Xác nhận mật khẩu không trùng khớp!"></asp:CompareValidator>
                </strong>
                        </td>
                    </tr>

                    
                    <tr>
                        <td colspan="2" style="height: 36px; text-align: center;">
                            <asp:Button ID="btn_add_user" runat="server" Text="Cập nhật" onclick="btn_update_pass" 
                                />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        </td>
                    </tr>
                </table>
        </asp:View>
</asp:MultiView>
</asp:Content>

