using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StudentFreelancerLogin
{
    public partial class MyProfile : System.Web.UI.Page
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
                kullanici_resim();
            }
            try
            {
                SqlCommand Getir = new SqlCommand("Select * From Kullanici Where Kullanici_id=@p1", bgl.Baglanti());
                Getir.Parameters.AddWithValue("@p1", Session["Kullanici_id"].ToString());
                SqlDataReader dr = Getir.ExecuteReader();
                if (dr.Read())
                {
                    TB_Ad.Text = dr["Kullanici_isim"].ToString();
                    TB_Kullanici.Text = dr["Kullanici_adi"].ToString();
                    TB_Mail.Text = dr["Kullanici_mail"].ToString();
                    TB_Tel.Text = dr["Kullanici_telefon"].ToString();
                    TB_City.Text = dr["Kullanici_Sehir"].ToString();
                    TB_Country.Text = dr["Kullanici_Ulke"].ToString();
                    TB_KisaAciklama.Text = dr["Kullanici_KisaAciklama"].ToString();
                    TB_Hakkimda.Text = dr["Kullanici_Aciklama"].ToString();
                    TB_IBAN.Text = dr["Kullanici_IBAN"].ToString();
                    TB_Web.Text = dr["Kullanici_Web"].ToString();
                    TB_FB.Text = dr["Kullanici_FB"].ToString();
                    TB_Twitter.Text = dr["Kullanici_TW"].ToString();

                }
                bgl.Baglanti().Close();
            }
            catch (Exception)
            {
                Response.Redirect("MyProfile.aspx");
            }

        }
        void kullanici_resim()
        {
            SqlCommand birlestir = new SqlCommand("Select Kullanici.Kullanici_adi,Galeri.Resim_adi From Galeri Inner Join Kullanici on(Galeri.Kullanici_adi = Kullanici.Kullanici_adi) Where Kullanici.Kullanici_adi=@p1", bgl.Baglanti());
            birlestir.Parameters.AddWithValue("@p1", Session["Kullanici"].ToString());
            SqlDataReader dr = birlestir.ExecuteReader();
            if (dr.Read())
            {
                Img_Resim.ImageUrl = dr["Resim_adi"].ToString();
            }
            bgl.Baglanti().Close();
        }
        void Ekle()
        {
            try
            {
                SqlCommand ekle = new SqlCommand("Update Kullanici Set Kullanici_Telefon=@p1,Kullanici_Ulke=@p2,Kullanici_Sehir=@p3,Ogrenci_universite=@p4,Ogrenci_bolum=@p5,Kullanici_KisaAciklama=@p6,Kullanici_Hakkinda=@p7,Kullanici_IBAN=@p8,Kullanici_Web=@p9,Kullanici_FB=@p10,Kullanici_TW=@p11 Where Kullanici_adi=@Kullanici", bgl.Baglanti());
                ekle.Parameters.AddWithValue("@p1", TB_Tel.Text);
                ekle.Parameters.AddWithValue("@p2", TB_Country.Text);
                ekle.Parameters.AddWithValue("@p3", TB_City.Text);
                ekle.Parameters.AddWithValue("@p4", DDLUniversity.Text);
                ekle.Parameters.AddWithValue("@p5", DDLDepartment.Text);
                ekle.Parameters.AddWithValue("@p6", TB_KisaAciklama.Text);
                ekle.Parameters.AddWithValue("@p7", TB_Hakkimda.Text);
                ekle.Parameters.AddWithValue("@p8", TB_IBAN.Text);
                ekle.Parameters.AddWithValue("@p9", TB_Web.Text);
                ekle.Parameters.AddWithValue("@p10", TB_FB.Text);
                ekle.Parameters.AddWithValue("@p11", TB_Twitter.Text);
                ekle.Parameters.AddWithValue("@Kullanici", Session["Kullanici"].ToString());
                ekle.ExecuteNonQuery();
                bgl.Baglanti().Close();
            }
            catch (Exception)
            {
                Response.Redirect("MyProfile.aspx");
            }

        }
        void resim()
        {
            SqlCommand pic = new SqlCommand("Select Resim_adi From Galeri Where Kullanici_adi=@p1", bgl.Baglanti());
            pic.Parameters.AddWithValue("@p1", Session["Kullanici"].ToString());
            SqlDataReader dr = pic.ExecuteReader();
            Img_Resim.DataBind();
            bgl.Baglanti().Close();

        }
        bool durum;
        void resimkontrol()
        {
            SqlCommand reskontrol = new SqlCommand("Select Kullanici.Kullanici_isim,Kullanici.Kullanici_adi,Galeri.Resim_adi From Galeri Inner Join Kullanici on(Galeri.Kullanici_adi = Kullanici.Kullanici_adi) Where Kullanici.Kullanici_adi=@p1", bgl.Baglanti());
            reskontrol.Parameters.AddWithValue("@p1", Session["Kullanici"].ToString());
            SqlDataReader dr = reskontrol.ExecuteReader();
            if (dr.Read())
            {
                durum = true;
            }
            else
            {
                durum = false;
            }
            if (durum == true)
            {
                if (FU_Resim.HasFile)
                {
                    FU_Resim.SaveAs(Server.MapPath("~/assets/images/user_image/")+ Session["Kullanici"].ToString() + FU_Resim.FileName);
                    resimyolu = "https://loginstudentfreelancer.mertguney.com/assets/images/user_image/"+ Session["Kullanici"].ToString() + FU_Resim.FileName;

                    SqlCommand resim = new SqlCommand("Update Galeri Set Resim_adi=@p1 Where Kullanici_adi=@p2", bgl.Baglanti());
                    resim.Parameters.AddWithValue("@p1", resimyolu);
                    resim.Parameters.AddWithValue("@p2", Session["Kullanici"].ToString());
                    resim.ExecuteNonQuery();
                    resim.Dispose();
                }
            }
            else if (durum == false)
            {
                if (FU_Resim.HasFile)
                {
                    FU_Resim.SaveAs(Server.MapPath("~/assets/images/user_image/") + Session["Kullanici"].ToString() + FU_Resim.FileName);
                    resimyolu = "https://loginstudentfreelancer.mertguney.com/assets/images/user_image/" + Session["Kullanici"].ToString() + FU_Resim.FileName;

                    SqlCommand resim = new SqlCommand("Insert Into Galeri(Resim_adi,Kullanici_adi) Values(@p1,@p2)", bgl.Baglanti());
                    resim.Parameters.AddWithValue("@p1", resimyolu);
                    resim.Parameters.AddWithValue("@p2", Session["Kullanici"].ToString());
                    resim.ExecuteNonQuery();
                    resim.Dispose();
                }
            }
            bgl.Baglanti().Close();
        }

        protected void BTN_Güncelle_Click(object sender, EventArgs e)
        {
            Ekle();
        }
        string resimyolu;
        protected void BTN_Resim_Click(object sender, EventArgs e)
        {
            resimkontrol();
        }
    }
}