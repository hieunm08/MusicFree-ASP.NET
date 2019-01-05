<%@ Page Title="Administrator Management" Language="C#" MasterPageFile="~/admin/Master_Admin.master" AutoEventWireup="true" CodeFile="QL_Music.aspx.cs" Inherits="admin_QL_Music" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class='menu'>
<ul>
<li><a href='QL_Music.aspx?MS=Xem' >Xem Music</a></li>
<li><a href='QL_Music.aspx?MS=Sua' >Sửa Music</a></li>
<li><a href='QL_Music.aspx?MS=Them' >Thêm Music</a></li>
</ul>
</div>
<div>
    <asp:MultiView ID="MultiView1" runat="server">
        <asp:View ID="View1" runat="server"><p> Nhập vào số Mã Music cần xóa :
            <asp:TextBox ID="txt_xoa" runat="server" Width="64px"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button 
                ID="btn_xoa" runat="server" Text="Xóa " 
                onclick="btn_xoa_Click" /></p>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" 
                CellPadding="3" CellSpacing="2" DataKeyNames="MaBH" 
                DataSourceID="SqlDataSource1" Width="85%">
                <Columns>
                    <asp:BoundField DataField="MaBH" HeaderText="MaBaiHat" InsertVisible="False" 
                        ReadOnly="True" SortExpression="MaBH" />
                    <asp:BoundField DataField="MaTheLoai" HeaderText="MaTheLoai" 
                        SortExpression="MaTheLoai" />
                    <asp:BoundField DataField="TenCaSi" HeaderText="Tên Ca Sĩ" 
                        SortExpression="TenCaSi" />
                    <asp:BoundField DataField="TenBH" HeaderText="TenBaiHat" 
                        SortExpression="TenBaiHat" />
                    
                    <asp:BoundField HeaderText="Ngày Đăng"  DataField="NgayDang" SortExpression="NgayDang" />
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
                
                SelectCommand="SELECT [MaBH], [MaTheLoai], [TenCaSi], [TenBH], [NgayDang] FROM [BaiHat]"></asp:SqlDataSource>
        </asp:View>
        <asp:View ID="View2" runat="server">
        <p> Nhập vào số Mã Music cần Tìm :
            <asp:TextBox ID="txt_mabh" runat="server" Width="64px"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button 
                ID="btn_" runat="server" Text="Tìm" onclick="btn__Click" /></p>
        <table border="0" style="width: 80%">
                    <tr>
                        <td class="__left" style="height: 26px; text-align: right;">
                            Tên Bài Hát :</td>
                        <td style="text-align: left; height: 26px;">
                            <asp:TextBox ID="txt_tenbaihat" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="__left" style="text-align: right">
                            Mã Thể Loại :</td>
                        <td style="text-align: left">
                            <asp:TextBox ID="txt_matheloai" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    
                    <tr>
                        <td class="__left" style="height: 28px; text-align: right;">
                            Tên Ca Sĩ :</td>
                        <td style="text-align: left; height: 28px;">
                            <asp:TextBox ID="txt_macasi" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="__left" style="height: 28px; text-align: right;">
                            File Nhạc:</td>
                        <td style="text-align: left; height: 28px;">
                            <asp:TextBox ID="txt_DuongDan" runat="server"></asp:TextBox>
                        </td>
                    </tr>
            <tr>
                        <td class="__left" style="height: 28px; text-align: right;">
                            File Ảnh :</td>
                        <td style="text-align: left; height: 28px;">
                            <asp:TextBox ID="txt_DanAnh" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="__left" style="height: 28px; text-align: right;">
                            Lời bài hát :</td>
                        <td style="text-align: left; height: 28px;">
                            <asp:TextBox ID="txt_lbh" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                   
                    <tr>
                        <td colspan="2" style="height: 36px; text-align: center;">
                            <asp:Button ID="btn_add" runat="server" Text="Cập Nhật" 
                                onclick="btn_add_Click"/>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        </td>
                    </tr>
                </table>
        </asp:View>
        <asp:View ID="View3" runat="server">
        <table border="0" style="width: 80%">
                    <tr>
                        <td class="__left" style="height: 26px; text-align: right;">
                            Tên Bài Hát :</td>
                        <td style="text-align: left; height: 26px;">
                            <asp:TextBox ID="txt_add_tenbaihat" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="__left" style="text-align: right; height: 26px;">
                            File Nhạc :</td>
                        <td style="text-align: left; height: 26px;">
                            <asp:FileUpload ID="FileUpload_nhac" runat="server" />
                        </td>
                    </tr>
              <tr>
                        <td class="__left" style="text-align: right">
                            File Ảnh :</td>
                        <td style="text-align: left">
                            <asp:FileUpload ID="FileUpload_anh" runat="server" />
                        </td>
                    </tr>
                    <tr>
                        <td class="__left" style="text-align: right">
                            Mã Thể Loại :</td>
                        <td style="text-align: left">
                            <asp:TextBox ID="txt_add_matheloai" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                   
                    <tr>
                        <td class="__left" style="height: 28px; text-align: right;">
                           Tên Ca Sĩ :</td>
                        <td style="text-align: left; height: 28px;">
                            <asp:TextBox ID="txt_add_macasi" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                   
                    <tr>
                        <td class="__left" style="height: 28px; text-align: right;">
                            Lời bài hát :</td>
                        <td style="text-align: left; height: 28px;">
                            <asp:TextBox ID="txt_add_lbh" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                   
                    <tr>
                        <td colspan="2" style="height: 36px; text-align: center;">
                            <asp:Button ID="btn_add_music" runat="server" Text="Cập Nhật" 
                                onclick="btn_add_music_Click"/>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        </td>
                    </tr>
                </table>         
            <br />
            <table style="padding: 0px; width: 90%">
                <tr>
                    <td style="width: 25%">
                        &nbsp;</td>
                    <td style="width: 25%">
                         &nbsp;</td>
                    <td style="width: 25%">
                        <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" 
                DataKeyNames="MaTheLoai" DataSourceID="SqlDataSource4" BackColor="#DEBA84" 
                            BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" 
                            CellSpacing="2" >
                <Columns>
                    <asp:BoundField DataField="MaTheLoai" HeaderText="MaTheLoai" 
                        InsertVisible="False" ReadOnly="True" SortExpression="MaTheLoai" />
                    <asp:BoundField DataField="TenTheLoai" HeaderText="TenTheLoai" 
                        SortExpression="TenTheLoai" />
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
            <asp:SqlDataSource ID="SqlDataSource4" runat="server" 
                ConnectionString="<%$ ConnectionStrings:MUSIC %>" 
                SelectCommand="SELECT [MaTheLoai], [TenTheLoai] FROM [TheLoai]"></asp:SqlDataSource></td>
                    <td style="width: 25%">
                        &nbsp;</td>
                </tr>
            </table>
        </asp:View>
    </asp:MultiView>
</div>
</asp:Content>

