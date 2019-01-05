using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class nhacplaylist : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["MUSIC"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        DisPlayMusic();
    }
    public void DisPlayMusic()
    {
        //string matheloai = Request.QueryString["L"].ToString();
        string sql = "select TaiKhoan.TenDN,DanhSach.MaDS,DanhSach.TenDS,BaiHat.MaBH,BaiHat.DanAnh,BaiHat.TenBH,BaiHat.TenCaSi from TaiKhoan join DanhSach on TaiKhoan.MaTK = DanhSach.MaTK join DanhSachChiTiet on DanhSach.MaDS = DanhSachChiTiet.MaDS join BaiHat on DanhSachChiTiet.MaBH = BaiHat.MaBH Where TenDN ='" + Session["DangNhap"] + "'";
      
        con.Open();
        SqlDataAdapter da = new SqlDataAdapter(sql, con);
        DataSet ds = new DataSet();
        da.Fill(ds);
        DataList1.DataSource = ds;
        DataList1.DataBind();
        con.Close();
    }
}