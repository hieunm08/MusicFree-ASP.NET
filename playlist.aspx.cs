using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class playlist : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["MUSIC"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 0;
        if (Session["DangNhap"] != null)
        {



            string insertquery = "select TaiKhoan.MaTK,DanhSach.TenDS from TaiKhoan  join DanhSach on TaiKhoan.MaTK = DanhSach.MaTK Where TenDN ='" + Session["DangNhap"] + "'";
            con.Open();
            SqlCommand cmd = new SqlCommand(insertquery, con);
            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {


                lbl_playlist.Text = dr["TenDS"].ToString();
                txt_matk.Text = dr["MaTK"].ToString();
            }

           
        }
        else
            Response.Redirect("dangnhap.aspx");
    }

    protected void btn_Update_Pl_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 1;
    }
    protected void btn_add_Pl(object sender, EventArgs e)
    {
        string matk = txt_matk.Text;
        string tenplaylist = txt_playlist.Text;
        if (tenplaylist != "")
        {
            string insert = "insert into DanhSach (TenDS,MaTK) Values (N'" + tenplaylist + "',N'" + matk + "')";
            con.Open();
            SqlCommand cmd = new SqlCommand(insert, con);
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Redirect(" MultiView1.ActiveViewIndex = 0");
        }else
            Response.Write("<script>alert('Vui lòng điền đầy đủ thông tin!')</script>");
    }
    
}