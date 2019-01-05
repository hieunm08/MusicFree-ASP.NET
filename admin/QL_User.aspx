<%@ Page Title="Administrator Management" Language="C#" MasterPageFile="~/admin/Master_Admin.master" AutoEventWireup="true" CodeFile="QL_User.aspx.cs" Inherits="admin_QL_User" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class='menu'>
<ul>
<li><a href='QL_User.aspx?Us=Xem' >Xem tài khoản</a></li>
<li><a href='QL_User.aspx?Us=Them' >Thêm tài khoản</a></li>
</ul>
</div>
<div>
    <asp:MultiView ID="MultiView1" runat="server">
        <asp:View ID="View1" runat="server">
        <div class="Xoa">
        Nhập vào số Mã User cần xóa :
            <asp:TextBox ID="txt_xoa_user" runat="server" Width="64px"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button 
                ID="btn_xoa_user" runat="server" Text="Xóa User" 
                onclick="btn_xoa_user_Click"  />
        </div>
            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
                BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" 
                CellPadding="3" CellSpacing="2" 
                DataSourceID="SqlDataSource1" Width="80%">
                <Columns>
                    <asp:BoundField DataField="MaTK" HeaderText="STT" SortExpression="MaTK" />
                    <asp:BoundField DataField="TenDN" HeaderText="Tài Khoản" 
                        SortExpression="TenDN" />
                    <asp:BoundField DataField="MatKhau" HeaderText="Mật Khẩu" 
                        SortExpression="MatKhau" />
               
                    
                    <asp:BoundField DataField="Ten" HeaderText="Họ Tên" SortExpression="Ten" />
                    <asp:BoundField DataField="Tuoi" HeaderText="Tuổi" SortExpression="Tuoi" />
               
                    
                    <asp:BoundField DataField="TinhTrangTK" HeaderText="TinhTrangTK" SortExpression="TinhTrangTK" />
                   
                    <asp:BoundField DataField="Email" HeaderText="Email" 
                        SortExpression="Email" />
                </Columns>
                <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#FFF1D4" />
                <SortedAscendingHeaderStyle BackColor="#B95C30" />
                <SortedDescendingCellStyle BackColor="#F1E5CE" />
                <SortedDescendingHeaderStyle BackColor="#93451F" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:MUSIC %>" 
                
                SelectCommand="SELECT [MaTK], [TenDN], [MatKhau], [Ten], [Tuoi], [TinhTrangTK], [Email] FROM [TaiKhoan] WHERE ([Quyen] = @MaQuyen)">
                <SelectParameters>
                    <asp:Parameter DefaultValue="2" Name="MaQuyen" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
            <p> Admin Web</p>
            <asp:GridView ID="GridView1" runat="server" Width="50%" 
                AutoGenerateColumns="False" DataSourceID="SqlDataSource2">
                <Columns>
                    <asp:BoundField DataField="MaTK" HeaderText="STT" SortExpression="MaTK" />
                    <asp:BoundField DataField="TenDN" HeaderText="Tài Khoản Admin" 
                        SortExpression="TenDN" />
                    <asp:BoundField DataField="Ten" HeaderText="Họ Tên" SortExpression="Ten" />
                   
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                ConnectionString="<%$ ConnectionStrings:MUSIC %>" 
                SelectCommand="SELECT [MaTK], [TenDN], [Ten] FROM [TaiKhoan] WHERE ([Quyen] = @MaQuyen)">
                <SelectParameters>
                    <asp:Parameter DefaultValue="1" Name="MaQuyen" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
        </asp:View>
        <asp:View ID="View_AddUser" runat="server">
            <table border="0" style="width: 80%">
                    <tr>
                        <td class="__left" style="height: 26px; text-align: right;">
                            Tên Đăng Nhập :</td>
                        <td style="text-align: left; height: 26px;">
                            <asp:TextBox ID="txt_add_user" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="__left" style="text-align: right">
                            Mật Khẩu :</td>
                        <td style="text-align: left">
                            <asp:TextBox ID="txt_add_pass" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="__left" style="height: 28px; text-align: right;">
                            Họ Tên :</td>
                        <td style="text-align: left; height: 28px;">
                            <asp:TextBox ID="txt_add_ten" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                   
                    
                    <tr>
                        <td class="__left" style="height: 28px; text-align: right;">
                            Quyền :</td>
                        <td style="text-align: left; height: 28px;">
                            <asp:TextBox ID="txt_add_quyen" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                      
                    <tr>
                        <td class="__left" style="text-align: right">
                            Email :</td>
                        <td style="text-align: left">
                            <asp:TextBox ID="txt_add_mail" runat="server"></asp:TextBox>
&nbsp;                     
                        </td>
                    </tr>
                  <tr>
                        <td class="__left" style="text-align: right">
                            Tuổi :</td>
                        <td style="text-align: left">
                            <asp:TextBox ID="txt_add_tuoi" runat="server"></asp:TextBox>
&nbsp;                     
                        </td>
                    </tr>
                    
                    <tr>
                        <td colspan="2" style="height: 36px; text-align: center;">
                            <asp:Button ID="btn_add_user" runat="server" Text="Thêm User" onclick="btn_add_user_Click" 
                                />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        </td>
                    </tr>
                </table>
        </asp:View>
    </asp:MultiView>
    </div>
</asp:Content>

