using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;


public partial class chinhthongtin : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["MUSIC"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {

        string act = null;
        
        if (Request.QueryString.HasKeys())
        {
            act = Request.QueryString["TT"].ToString();
        }
        switch (act)
        {
            case "BS":
                MultiView1.ActiveViewIndex = 0;
                break;

            case "MK":
                MultiView1.ActiveViewIndex = 1;
                break;

            default:
              
                break;
        }

}
  
    protected void btn_update_tt(object sender, EventArgs e)
    {
        string ten = txt_ten.Text;
        string email = txt_email.Text;
        string tuoi = txt_tuoi.Text;
        if (ten != "" && email != "" && tuoi != "")
        {
            string updatequery = "Update  TaiKhoan Set Ten=N'" + ten + "',Email=N'" + email + "',Tuoi=N'" + tuoi + "' Where TenDN ='" + Session["DangNhap"] + "'";
            con.Open();
            SqlCommand cmd = new SqlCommand(updatequery, con);
            //cmd1.ExecuteNonQuery();
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Write("<script>alert('Cập nhật thành công')</script>");
            Response.Redirect("canhan.aspx");
        }else
            Response.Write("<script>alert('Vui lòng điền đầy đủ thông tin!')</script>");
    }
     protected void btn_update_pass(object sender, EventArgs e){
         string password = txt_pass.Text;
         if (password.Length >= 6)
         {
             string updatequery = "Update  TaiKhoan Set MatKhau =N'" + txt_pass.Text + "' Where TenDN ='" + Session["DangNhap"] + "'";
             con.Open();
             SqlCommand cmd = new SqlCommand(updatequery, con);
             cmd.ExecuteNonQuery();
             con.Close();
             Response.Redirect("dangnhap.aspx");
         }else
             Response.Write("<script>alert(' Mật khẩu tối thiểu 6 kí tự!)')</script>");
     }
}