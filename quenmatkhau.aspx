<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="quenmatkhau.aspx.cs" Inherits="quenmatkhau" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h2>Lấy lại mật khẩu</h2>
    <form id="quen">
        <div>
            <label>
            Nhập email:</label>
            <input name="email" type="text" />
        </div>
        <div>
            <label>
            Mật khẩu mới:</label>
            <input id="password" name="password" type="password" />
        </div>
        <div>
            <label>
            Nhập lại mật khẩu mới:</label>
            <input name="repassword" type="password" />
        </div>
        <div class="login">
            <button id="cc">
                Cập nhật
            </button>
            <button id="huy">
                Hủy bỏ
            </button>
        </div>
    </form>
                 

                    <script src="js/jquery.min.js"></script>
                    <script src="js/jquery.validate.min.js"></script>
                    <script src="js/additional-methods.min.js"></script>
                    <script>
                    $('#quen').validate({
                        rules: {                          
                            email: {
                                required: true,                              
                            },
                            password:{
                                required: true,
                                minlength: 6
                            },
                            repassword:{
                                equalTo: '#password'
                            }
                        },
                        messages: {
                           
                            email:{
                                required: "Vui lòng điền email!",                               
                            },
                            password:{
                                required:  "Vui lòng điền mật khẩu mới!",
                                minlength: "Mật khẩu tối thiểu 6 kí tự!"
                            },
                            repassword:{
                                equalTo: "Nhập lại mật khẩu!"
                            }
                        }
                    });
                 </script>
                    </asp:Content>

