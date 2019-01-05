using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using System.Net;

public partial class nghenhac : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["MUSIC"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {

        playnhac();
        Tenbaihat();
    }
    public void playnhac()
    {
        string M = null;
        if (Request.QueryString.HasKeys())
        {
            M = Request.QueryString["M"].ToString();
            string sql = "select * from BaiHat where MaBH='" + M + "'";
            con.Open();
            SqlCommand cmd = new SqlCommand(sql, con);
            SqlDataReader dr = cmd.ExecuteReader();
            dr.Read();
            string tencakhuc = dr["DuongDan"].ToString();
            string song_url = "audio/" + tencakhuc;
            con.Close();
            // Play__.InnerHtml = "<audio preload='auto' autoplay controls><source src='" + song_url + "'></audio>	";*/
            Play__.InnerHtml = "<video  preload='auto' autoplay poster='images/nn1.jpg' controls><source src='" + song_url + "'></video>";


        }
    }
    public void Tenbaihat()
    {
        string M = null;
        if (Request.QueryString.HasKeys())
        {
            M = Request.QueryString["M"].ToString();
            con.Open();
            string Baihat = null;
            string Casi = null;
            string TheLoai = null;
            string NgayDang = null;
            string LoiBaiHat = null;
            string sql = "select * from BaiHat,TheLoai where BaiHat.MaTheLoai=TheLoai.MaTheLoai and MaBH='" + M + "'";
            SqlCommand cmd = new SqlCommand(sql, con);
            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                Baihat = dr["TenBH"].ToString();
                Casi = dr["TenCaSi"].ToString();
                TheLoai = dr["TenTheLoai"].ToString();
                NgayDang = dr["NgayDang"].ToString();
                LoiBaiHat = dr["LoiBaiHat"].ToString();
                
            }
            lbltieude.Text = Baihat;
            lblcasi.Text = Casi;
            lblngay.Text = NgayDang;
            lbltheloai.Text = TheLoai;
            lblbaihat.Text = Baihat;
            lbllbh.Text = LoiBaiHat;
            con.Close();
            
        }
    }
        
    protected void ImageButton1_Click(object sender, EventArgs e)
    {
        string M = null;
        if (Request.QueryString.HasKeys())
        {
            WebClient req = new WebClient();
            M = Request.QueryString["M"].ToString();
            string sql = "select * from BaiHat where MaBH='" + M + "'";
            con.Open();
            SqlCommand cmd = new SqlCommand(sql, con);
            SqlDataReader dr = cmd.ExecuteReader();
            dr.Read();
            string tenbaihat = dr["DuongDan"].ToString();
            // string song_url = "../Music.vn/audio/" + tencakhuc;
            con.Close();
            Response.Clear();
            Response.Buffer = true;
            Response.ContentType = "application/octet-stream";
            Response.AppendHeader("content-disposition", "attachment; filename=" + tenbaihat);
            byte[] data = req.DownloadData(Server.MapPath("../Music.vn/audio/") + tenbaihat);
            Response.BinaryWrite(data);
            Response.End();
        } 
    
    }
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        if (Session["DangNhap"] != null)
        {



            string insertquery = "Select TaiKhoan.MaTK,DanhSach.MaDS From TaiKhoan join DanhSach on TaiKhoan.MaTK = DanhSach.MaTK Where TenDN ='" + Session["DangNhap"] + "'";
            con.Open();
            SqlCommand cmd = new SqlCommand(insertquery, con);
            SqlDataReader dr = cmd.ExecuteReader();

            dr.Read();
                string mads = dr["MaDS"].ToString();
                con.Close();
                string M = null;
                if (Request.QueryString.HasKeys())
                {

                    M = Request.QueryString["M"].ToString();
                    string mabh = M;
                    string query = "insert into DanhSachChiTiet (MaDS,MaBH) Values (N'" + mads + "',N'" + mabh + "')";
                    con.Open();
                    SqlCommand cmdd = new SqlCommand(query, con);
                    cmdd.ExecuteNonQuery();
                    con.Close();

                }
            //con.Close();
                


            

        }
        else
            Response.Redirect("dangnhap.aspx");

        
      
    }
}