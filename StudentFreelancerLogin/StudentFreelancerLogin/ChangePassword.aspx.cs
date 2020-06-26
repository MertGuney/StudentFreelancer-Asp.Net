using System;
using System.Collections.Generic;
using System.Linq;
using System.Data;
using System.Data.SqlClient;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StudentFreelancerLogin
{
    public partial class ChangePassword : System.Web.UI.Page
    {
        transaction bgl = new transaction();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Kullanici"] == null)
            {
                Response.Redirect("Default.aspx");
            }
        }

        protected void BTN_Guncelle_Click(object sender, EventArgs e)
        {
            if (TB_Eski.Text == "" || TB_Kontrol.Text == "" || TB_Yeni.Text == "")
            {
                LB_Bilgi.Text = "Alanları boş bırakmayınız.";
            }
            else
            {
                if (TB_Eski.Text == TB_Yeni.Text)
                {
                    LB_Bilgi.Text = "Eski şifreniz ile yenisi aynı olamaz.";
                }
                else if (TB_Yeni.Text != TB_Kontrol.Text)
                {
                    LB_Bilgi.Text = "Doğrulama hatalı.";
                }
                else if (TB_Yeni.Text == TB_Kontrol.Text)
                {
                    if (Durum == false)
                    {
                        SqlCommand sifre = new SqlCommand("Update Kullanici set Kullanici_sifre=@Kullanici_sifre Where Kullanici_adi=@p2", bgl.Baglanti());
                        sifre.Parameters.AddWithValue("@p2", Session["Kullanici"].ToString());
                        sifre.Parameters.AddWithValue("@Kullanici_sifre", TB_Kontrol.Text);
                        sifre.ExecuteReader();
                        bgl.Baglanti().Close();
                        LB_Bilgi.Text = "Güncelleme Başarılı";
                    }
                }
            }

        }
        bool Durum;
        void Kontrol()
        {
            SqlCommand kontrol = new SqlCommand("Select * From Kullanici Where Kullanici_sifre=@p1", bgl.Baglanti());
            kontrol.Parameters.AddWithValue("@p1", TB_Eski.Text);
            SqlDataReader dr = kontrol.ExecuteReader();
            if (dr.Read())
            {
                Durum = true;

            }
            else
            {
                Durum = false;
            }
            bgl.Baglanti().Close();
        }
    }
}