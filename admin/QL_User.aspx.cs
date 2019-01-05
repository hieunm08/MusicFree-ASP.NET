using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;

public partial class admin_QL_User : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["MUSIC"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        string act = null;
        if (Session["DangNhap"] == null)
            Response.Redirect("~/dangnhap.aspx");
        if (Request.QueryString.HasKeys())
        {
            act = Request.QueryString["Us"].ToString();
        }
        switch (act)
        {
            case "Xem":
                MultiView1.ActiveViewIndex = 0;
                break;

            case "Them":
                MultiView1.ActiveViewIndex = 1;
                break;

            default:
                break;
        }
    }
    protected void btn_xoa_user_Click(object sender, EventArgs e)
    {
                string insertquery = "Delete From  TaiKhoan Where MaTK ='" + txt_xoa_user.Text + "'";
                SqlCommand cmd = new SqlCommand(insertquery, con);
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Xóa Thành Công')</script>");
                Response.Redirect("QL_User.aspx?Us=Xem");
    }
    protected void btn_add_user_Click(object sender, EventArgs e)
    {
        string username = txt_add_user.Text;
        string password = txt_add_pass.Text;
        string ten = txt_add_ten.Text;
        string quyen = txt_add_quyen.Text;
        Boolean TinhTrangTK = true;
       // int maquyen = int.Parse(txt_add_quyen.Text);
        //chuyen KDL
        int maquyen;
        int Tuoi;
        int.TryParse(txt_add_quyen.Text, out maquyen);
        int.TryParse(txt_add_tuoi.Text, out Tuoi);
        string email = txt_add_mail.Text;
       // int Tuoi = int.Parse(txt_add_tuoi.Text);
 
        
       
        if (password.Length >= 6 && username != "" && email != "" )
        {
            string insert = "insert into TaiKhoan (TenDN,MatKhau,Quyen,TinhTrangTK,Email,Ten,Tuoi) Values (N'" + username + "',N'" + password + "',N'" + maquyen + "',N'" + TinhTrangTK + "',N'" + email + "',N'" + ten + "',N'" + Tuoi + "')";
            con.Open();
            SqlCommand cmdd = new SqlCommand(insert, con);
            cmdd.ExecuteNonQuery();
            con.Close();
            Response.Redirect("QL_User.aspx?Us=Xem");
        }
        else
            Response.Write("<script>alert('Vui lòng điền đầy đủ thông tin!( lưu ý: mật khẩu tối thiểu 6 kí tự!)')</script>");
       
    }
}