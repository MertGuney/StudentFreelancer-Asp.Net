using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StudentFreelancerLogin
{
    public partial class Users : System.Web.UI.Page
    {
        transaction bgl = new transaction();
        string user = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Kullanici"] == null)
                Response.Redirect("Default.aspx");
            //try
            //{
            user = Request.QueryString["Kullanici_id"];
            SqlCommand Getir = new SqlCommand("Select * From Kullanici Where Kullanici_id=@p1", bgl.Baglanti());
            Getir.Parameters.AddWithValue("@p1", user);
            SqlDataReader dr = Getir.ExecuteReader();
            sosyal();
            if (dr.Read())
            {
                LB_Kullanici.Text = dr["Kullanici_isim"].ToString();
                LB_Ad.Text = dr["Kullanici_isim"].ToString();
                LB_KAciklama.Text = dr["Kullanici_KisaAciklama"].ToString();
                LB_KisaAciklama.Text = dr["Kullanici_KisaAciklama"].ToString();
                LB_Aciklama.Text = dr["Kullanici_Aciklama"].ToString();
            }
            bgl.Baglanti().Close();
            //}
            //catch (Exception)
            //{
            //    Response.Redirect("HomePage.aspx");
            //}
        }
        void sosyal()
        {
            SqlCommand medya = new SqlCommand("Select * From Kullanici Where Kullanici_id=@p1", bgl.Baglanti());
            medya.Parameters.AddWithValue("@p1", user);
            SqlDataReader dr = medya.ExecuteReader();
            Rpt_Sosyal.DataSource = dr;
            Rpt_Sosyal.DataBind();
        }
    }
}