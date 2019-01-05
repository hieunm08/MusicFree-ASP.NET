using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;

public partial class nhacchude : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["MUSIC"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        Tentheloai();
        DisPlayMusic();
    }
    public void Tentheloai()
    {
        string matheloai = Request.QueryString["L"].ToString();
        string Theloai = null;
        string sql = "select * from TheLoai where MaTheLoai='" + matheloai + "'";
        con.Open();
        SqlCommand cmd = new SqlCommand(sql, con);
        SqlDataReader dr = cmd.ExecuteReader();
        while (dr.Read())
        {
            Theloai = dr["TenTheLoai"].ToString();
        }
        Label1.Text =  Theloai;
        con.Close();
    }
    public void DisPlayMusic()
    {
        string matheloai = Request.QueryString["L"].ToString();
        string sql = "select * from BaiHat Where MaTheLoai='" + matheloai + "'";
        con.Open();
        SqlDataAdapter da = new SqlDataAdapter(sql, con);
        DataSet ds = new DataSet();
        da.Fill(ds);
        DataList1.DataSource = ds;
        DataList1.DataBind();
        con.Close();
    }
}