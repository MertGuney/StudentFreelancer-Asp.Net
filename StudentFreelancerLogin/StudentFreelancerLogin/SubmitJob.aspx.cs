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
    public partial class SubmitJob : System.Web.UI.Page
    {
        transaction bgl = new transaction();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Kullanici"] == null)
            {
                Response.Redirect("Default.aspx");
            }
            Category();
            Skill();
        }
        void Ekle()
        {
            //try
            //{
                SqlCommand ekle = new SqlCommand("Insert Into Projeler(Proje_Baslik,Proje_KisaAciklama,Proje_Aciklama,Proje_Kategori,Proje_Icerik,Bitis_Tarih,Proje_Ucret,Kullanici_adi,Proje_durum) Values(@p1,@p2,@p3,@p4,@p5,@p6,@p7,@p8,@p9)", bgl.Baglanti());
                ekle.Parameters.AddWithValue("@p1", TB_ProjeBaslik.Text);
                ekle.Parameters.AddWithValue("@p2", TB_KisaAciklama.Text);
                ekle.Parameters.AddWithValue("@p3", TB_Aciklama.Text);
                ekle.Parameters.AddWithValue("@p4", DDLCategory.SelectedItem.Text);
                ekle.Parameters.AddWithValue("@p5", CBL_Skill.SelectedValue);
                ekle.Parameters.AddWithValue("@p6", TB_Bitis.Text);
                ekle.Parameters.AddWithValue("@p7", TB_Ucret.Text);
                ekle.Parameters.AddWithValue("@p8", Session["Kullanici"].ToString());
                ekle.Parameters.AddWithValue("@p9", LB_aktif.Text);
                ekle.ExecuteNonQuery();
                bgl.Baglanti().Close();
            //}
            //catch (Exception)
            //{
            //    Response.Redirect("SubmitJob.aspx");
            //}

        }
        void Category()
        {
            SqlCommand kategori = new SqlCommand("Select * From Kategoriler", bgl.Baglanti());
            SqlDataReader dr = kategori.ExecuteReader();
            DDLCategory.DataTextField = "Kategori_ad";
            DDLCategory.DataValueField = "Kategori_id";
            DDLCategory.DataSource = dr;
            DDLCategory.DataBind();
        }
        void Skill()
        {
            SqlCommand yetenekler = new SqlCommand("Select * From Yetenekler", bgl.Baglanti());
            SqlDataReader dr = yetenekler.ExecuteReader();
            CBL_Skill.DataTextField = "Yetenek_ad";
            CBL_Skill.DataValueField = "Yetenek_id";
            CBL_Skill.DataSource = dr;
            CBL_Skill.DataBind();

        }

        protected void BTN_Yayınla_Click(object sender, EventArgs e)
        {
            Ekle();
        }
    }
}