using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class dangky : System.Web.UI.Page
{
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["MUSIC"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void ImageButton1_Click(object sender, System.EventArgs e)
    {
        string select = "select TenDN from TaiKhoan where TenDN='" + txt_user.Text + "'";
        con.Open();
        SqlCommand cmd = new SqlCommand(select, con);
        SqlDataReader datareader = cmd.ExecuteReader();
        if (datareader.HasRows == false)
        {
            con.Close();
            string username = txt_user.Text;
            string password = txt_pass.Text;
            string repassword = txt_repass.Text;
            string ten = txt_ten.Text;
            int maquyen = 2;
            Boolean TinhTrangTK = true;
            string email = txt_email.Text;
            if (password.Length >= 6)
            {
                string insert = "insert into TaiKhoan (TenDN,MatKhau,Quyen,TinhTrangTK,Email,Ten) Values (N'" + username + "',N'" + password + "',N'" + maquyen + "',N'" + TinhTrangTK + "',N'" + email + "',N'" + ten + "')";
                con.Open();
                SqlCommand cmdd = new SqlCommand(insert, con);
                cmdd.ExecuteNonQuery();
                con.Close();
                Session.Add("DangNhap", txt_user.Text);
                Response.Redirect("trangchu.aspx");
            }
            else
                Response.Write("<script>alert('Mật khẩu tối thiểu 6 kí tự!')</script>");
        }
        else
        {
            con.Close();
            Response.Write("<script>alert('Tài khoản đã tồn tại!')</script>");
            txt_user.Text = "";
        }
    }
}