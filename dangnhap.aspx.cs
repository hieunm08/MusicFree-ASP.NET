using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class dangnhap : System.Web.UI.Page
{
    SqlConnection Con = new SqlConnection(ConfigurationManager.ConnectionStrings["MUSIC"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void ImageButton1_Click(object sender, System.EventArgs e)
    {
        string user = txt_user.Text;
        string pass = txt_pass.Text;
        string select = "select * from TaiKhoan where TenDN='" + user + "' and MatKhau='" + pass + "'";
        Con.Open();
        SqlCommand cmd = new SqlCommand(select, Con);
        SqlDataReader dr = cmd.ExecuteReader();
        dr.Read();
        if (dr.HasRows == false)
        {
            Response.Write("<script>alert('Tài khoản hoặc mật khẩu không đúng!')</script>");
        }
        else
        {
            string quyen = null;
            quyen = dr["Quyen"].ToString();
            string maQ = "1";
            if (quyen == maQ)
            {
                Session.Add("DangNhap", txt_user.Text);
                Response.Redirect("admin/Admin.aspx");
            }
            else
            {
                Session.Add("DangNhap", txt_user.Text);
                Response.Redirect("trangchu.aspx");
            }
        }
        Con.Close();
    }
    

}