using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI.WebControls;

namespace StudentFreelancerLogin
{
    public partial class JobDetail : System.Web.UI.Page
    {
        transaction bgl = new transaction();
        string ProjeId = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                ProjeId = Request.QueryString["Proje_id"];
                SqlCommand Getir = new SqlCommand("Select * From Projeler Where Proje_id=@p1", bgl.Baglanti());
                Getir.Parameters.AddWithValue("@p1", ProjeId);
                SqlDataReader dr = Getir.ExecuteReader();
                Job();
                icerik();
                if (dr.Read())
                {
                    LB_Baslik.Text = dr["Proje_Baslik"].ToString();
                    LB_KisaAciklama.Text = dr["Proje_KisaAciklama"].ToString();
                    LB_Alan.Text = dr["Proje_Kategori"].ToString();
                    LB_Yayinlayan.Text = dr["Kullanici_adi"].ToString();
                    LB_Tarih.Text = dr["Tarih"].ToString();
                    LB_Ucret.Text = dr["Proje_Ucret"].ToString();
                    LB_Aciklama.Text = dr["Proje_Aciklama"].ToString();
                    LB_KisaAciklama2.Text = dr["Proje_KisaAciklama"].ToString();

                }
                bgl.Baglanti().Close();
            }
            catch (Exception)
            {
                Response.Redirect("HomePage.aspx");
            }
        }

        void icerik()
        {
            SqlCommand icerik = new SqlCommand("Select Proje_Icerik From Projeler Where Proje_id=@p1",bgl.Baglanti());
            icerik.Parameters.AddWithValue("@p1", ProjeId);
            SqlDataReader dr = icerik.ExecuteReader();
            Rpt_icerik.DataSource = dr;
            Rpt_icerik.DataBind();

        }
        void Job()
        {
            SqlCommand isler = new SqlCommand("Select * From Projeler", bgl.Baglanti());
            SqlDataReader dr = isler.ExecuteReader();
            Rpt_Job.DataSource = dr;
            Rpt_Job.DataBind();
        }

    }
}