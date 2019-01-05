using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class MasterPage : System.Web.UI.MasterPage
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["MUSIC"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["DangNhap"] == null)
        {
            HyperLink login1 = new HyperLink();
            login1.Text = "Đăng nhập / ";
            login1.NavigateUrl = "dangnhap.aspx";
            login1.ToolTip = "Đăng nhập";

            HyperLink regester = new HyperLink();
            regester.Text = "Đăng ký";
            regester.NavigateUrl = "dangky.aspx";
            regester.ToolTip = "Đăng ký";

            Hello.Controls.Add(login1);
            Hello.Controls.Add(regester);
        }
        else
        {
            string Ten = null;
            string select = "select * from TaiKhoan where TenDN='" + Session["DangNhap"] + "'";
            con.Open();
            SqlCommand cmd = new SqlCommand(select, con);
            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                Ten = dr["Ten"].ToString();
            }
            con.Close();

            HyperLink Chao = new HyperLink();
            Chao.Text = "Chào : " + Ten;
            Chao.NavigateUrl = "canhan.aspx";
            Hello.Controls.Add(Chao);


            HyperLink logout = new HyperLink();
            logout.Text = "Đăng Xuất";
            logout.NavigateUrl = "dangxuat.aspx";
            logout.ToolTip = "Đăng Xuất";
            Hello.Controls.Add(logout);
        }
    }
}
