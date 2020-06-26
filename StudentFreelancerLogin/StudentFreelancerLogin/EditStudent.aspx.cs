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
    public partial class EditStudent : System.Web.UI.Page
    {
        transaction bgl = new transaction();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Kullanici"] == null)
            {
                Response.Redirect("Default.aspx");
            }
            else
            {
                Response.Redirect("HomePage.aspx");
            }
        }
        //void City()
        //{
        //    SqlCommand sehir = new SqlCommand("Select * From Sehirler", bgl.Baglanti());
        //    SqlDataReader dr = sehir.ExecuteReader();
        //    DDLCity.DataTextField = "Sehir_ad";
        //    DDLCity.DataValueField = "Sehir_id";
        //    DDLCity.DataSource = dr;
        //    DDLCity.DataBind();
        //}
        void Ekle()
        {
            try
            {
                SqlCommand ekle = new SqlCommand("Update Kullanici Set Ogrenci_telefon=@p1,Ogrenci_Ulke=@p2,Ogrenci_Sehir=@p3,Ogrenci_universite=@p4,Ogrenci_bolum=@p5,Ogrenci_hakkinda=@p6,Ogrenci_IBAN=@p7,Ogrenci_web=@p8,Ogrenci_fb=@p9,Ogrenci_tw=@p10 Where Kullanici_adi=@Kullanici", bgl.Baglanti());
                ekle.Parameters.AddWithValue("@p1", TB_Tel.Text);
                ekle.Parameters.AddWithValue("@p2", TB_Country.Text);
                ekle.Parameters.AddWithValue("@p3", TB_City.Text);
                ekle.Parameters.AddWithValue("@p4", DDLUniversity.Text);
                ekle.Parameters.AddWithValue("@p5", DDLDepartment.Text);
                ekle.Parameters.AddWithValue("@p6", TB_Hakkimda.Text);
                ekle.Parameters.AddWithValue("@p7", TB_IBAN.Text);
                ekle.Parameters.AddWithValue("@p8", TB_Web.Text);
                ekle.Parameters.AddWithValue("@p9", TB_FB.Text);
                ekle.Parameters.AddWithValue("@p10", TB_Twitter.Text);
                ekle.Parameters.AddWithValue("@Kullanici", Session["Kullanici"].ToString());
                ekle.ExecuteNonQuery();
                bgl.Baglanti().Close();
            }
            catch (Exception)
            {
                Response.Redirect("EditStudent.aspx");
            }

        }

        protected void BTN_Güncelle_Click(object sender, EventArgs e)
        {
            Ekle();
        }
    }
}