using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class canhan : System.Web.UI.Page
{
     SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["MUSIC"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        thongtin();
    }
    public void thongtin()
    {
        if (Session["DangNhap"] != null)
        {
            


            string insertquery = "Select * From  TaiKhoan Where TenDN ='" + Session["DangNhap"] + "'";
            con.Open();
            SqlCommand cmd = new SqlCommand(insertquery, con);
            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {

                lbl_ten.Text = dr["Ten"].ToString();
                lbl_tuoi.Text = dr["Tuoi"].ToString();
                lbl_email.Text = dr["Email"].ToString();
            }
         

        }
        else
            Response.Redirect("dangnhap.aspx");
    }
    protected void btn_cs_Click(object sender, EventArgs e)
    {
        Response.Redirect("chinhthongtin.aspx");
    }
   
}