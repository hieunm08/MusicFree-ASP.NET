using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;

public partial class admin_QL_Music : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["MUSIC"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        string act = null;
        if (Session["DangNhap"] == null)
            Response.Redirect("~/dangnhap.aspx");
        if (Request.QueryString.HasKeys())
        {
            act = Request.QueryString["Ms"].ToString();
        }
        switch (act)
        {
            case "Xem":
                MultiView1.ActiveViewIndex = 0;
                break;

            case "Sua":
                MultiView1.ActiveViewIndex = 1;
                break;

            case "Them":
                MultiView1.ActiveViewIndex = 2;
                break;

            default:
                break;
        }
    }
    protected void btn__Click(object sender, EventArgs e)
    {
        string tim = txt_mabh.Text;
        string insertquery = "Select * From  BaiHat Where MaBH ='" + tim + "'";
        con.Open();
        SqlCommand cmd = new SqlCommand(insertquery, con);
        SqlDataReader dr = cmd.ExecuteReader();
        while (dr.Read())
        {
            txt_tenbaihat.Text = dr["TenBH"].ToString();
            txt_matheloai.Text = dr["MaTheLoai"].ToString();
            txt_macasi.Text = dr["TenCaSi"].ToString();
            txt_lbh.Text = dr["LoiBaiHat"].ToString();
            txt_DuongDan.Text = dr["DuongDan"].ToString();
            txt_DanAnh.Text = dr["DanAnh"].ToString();
            
        }
    }
    protected void btn_add_Click(object sender, EventArgs e)
    {
       
        string tim = txt_mabh.Text;
        string updatequery = "Update  BaiHat Set TenBH=N'" + txt_tenbaihat.Text + "',MaTheLoai=N'" + txt_matheloai.Text + "',TenCaSi=N'" + txt_macasi.Text + "',DuongDan=N'" + txt_DuongDan.Text + "',DanAnh=N'" + txt_DanAnh.Text + "',LoiBaiHat=N'" + txt_lbh.Text + "' Where MaBH ='" + tim + "'";
        //string date = "ALTER TABLE dbo.BaiHat ADD CONSTRAINT [DF_BaiHat_NgayDang] DEFAULT (getdate()) FOR [NgayDang]";
        con.Open();
        //SqlCommand cmd1 = new SqlCommand(date, con);
        SqlCommand cmd = new SqlCommand(updatequery, con);
        //cmd1.ExecuteNonQuery();
        cmd.ExecuteNonQuery();
       
        con.Close();
        Response.Redirect("QL_Music.aspx?Ms=Xem");
    }
    protected void btn_xoa_Click(object sender, EventArgs e)
    {
        string insertquery = "Delete From  BaiHat Where MaBH ='" + txt_xoa.Text + "'";
        SqlCommand cmd = new SqlCommand(insertquery, con);
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
        Response.Write("<script>alert('Xóa Thành Công')</script>");
        Response.Redirect("QL_Music.aspx?Ms=Xem");
    }
    protected void btn_add_music_Click(object sender, EventArgs e)
    {
      
        String filePath1 =  "~/images/" + FileUpload_anh.FileName;
        String filePath2 =  FileUpload_nhac.FileName;
        //FileUpload_anh.SaveAs(MapPath(filePath));
       // String filePath = "MusicWeb/AudioPlayer/audio/" + FileUpload_nhac.FileName;
        //FileUpload_nhac.SaveAs(MapPath(filePath));
        string insert = "insert into BaiHat (MaTheLoai,TenCaSi,TenBH,DanAnh,DuongDan,LoiBaiHat) Values (N'" + txt_add_matheloai.Text + "',N'" + txt_add_macasi.Text + "',N'" + txt_add_tenbaihat.Text + "',N'" + filePath1 + "',N'" + filePath2 + "',N'" + txt_add_lbh.Text + "')";
        con.Open();
        SqlCommand cmd = new SqlCommand(insert, con);
        cmd.ExecuteNonQuery();
        con.Close();
        Response.Redirect("QL_Music.aspx?Ms=Xem");
    }
    bool CheckFileType(string fileName)
    {
        string ext = Path.GetExtension(fileName);
        switch (ext.ToLower())
        {
            case ".mp3":
                return true;
            default:
                return false;
        }
    }
}