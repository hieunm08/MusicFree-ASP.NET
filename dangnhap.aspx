<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="dangnhap.aspx.cs" Inherits="dangnhap" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
   <h3>Đăng nhập</h3>
             
            	<form id="dangnhap">
                	<div>
                        <label>Tên tài khoản:</label>
                       
                        <asp:TextBox ID="txt_user"  runat="server" CssClass="txt__txt" placeholder="UserName" autocomplete='off' ></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                            ControlToValidate="txt_user" ErrorMessage="Bạn chưa nhập tài khoản .."></asp:RequiredFieldValidator>
                    </div>
                    <div>
                        <label>Mật khẩu:</label>
                      
                         <asp:TextBox ID="txt_pass"  runat="server" CssClass="txt__txt" 
                            placeholder="PassWord" TextMode="Password" autocomplete='off' ></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                         ErrorMessage="Bạn chưa nhập mật khẩu" ControlToValidate="txt_pass"></asp:RequiredFieldValidator>
                	</div>
                    <div>
                	<a href="#">Quên mật khẩu?</a>
                    </div>
                    <div class="login">
                        <asp:Button ID="Button1" runat="server" Text="Đăng nhập" onclick="ImageButton1_Click"/>
                    
                    </div>
                </form>

                   
                 
                    </asp:Content>