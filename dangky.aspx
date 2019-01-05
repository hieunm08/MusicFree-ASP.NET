<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="dangky.aspx.cs" Inherits="dangky" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h2 style="color:white; font-size:24px; margin-top:15px;">Đăng ký tài khoản</h2>
    <form id="dangky">
        <div>
            <label>
            Tên tài khoản:</label>
          
             <asp:TextBox ID="txt_user" runat="server" autocomplete="off" 
                        CssClass="txt__txt"></asp:TextBox>
            <strong><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ErrorMessage="Bạn chưa nhập tài khoản" ControlToValidate="txt_user" 
                        ForeColor="White"></asp:RequiredFieldValidator></strong>
        </div>
        <div>
            <label>
            Email:</label>
        
             <asp:TextBox ID="txt_email" runat="server" autocomplete="off" 
                        CssClass="txt__txt" 
                       ></asp:TextBox>
             <strong>
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                    ForeColor="White"   ControlToValidate="txt_email" ErrorMessage="Bạn Chưa Nhập Email "></asp:RequiredFieldValidator>
               </strong>
        </div>
          <div>
            <label>
            Họ tên:</label>
        
             <asp:TextBox ID="txt_ten" runat="server" autocomplete="off" 
                        CssClass="txt__txt" 
                       ></asp:TextBox>
             <strong>
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ForeColor="White"   ControlToValidate="txt_ten" ErrorMessage="Bạn Chưa Nhập Tên "></asp:RequiredFieldValidator>
               </strong>
        </div>
        <div>
            <label>
            Mật khẩu:</label>
           
           
            <asp:TextBox ID="txt_pass" TextMode="Password" runat="server" CssClass="txt__txt" 
                        type="password" ></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                      ForeColor="White"  ControlToValidate="txt_pass" ErrorMessage="Bạn chưa nhập PassWord"></asp:RequiredFieldValidator>
               </strong>
        </div>
        <div>
            <label>
            Nhập lại mật khẩu:</label>
             <asp:TextBox ID="txt_repass" TextMode="Password" runat="server" CssClass="txt__txt"
                       ></asp:TextBox>
           <strong>
                   <asp:CompareValidator ID="CompareValidator1" runat="server" 
                       ControlToCompare="txt_repass" ControlToValidate="txt_pass" 
                    ForeColor="White"   ErrorMessage="Xác nhận mật khẩu không trùng khớp"></asp:CompareValidator>
                </strong>
        </div>
        <div class="login">
              <asp:Button ID="Button1" runat="server" Text="Button" onclick="ImageButton1_Click"/>
           
        </div>
    </form>
                 
                    </asp:Content>

