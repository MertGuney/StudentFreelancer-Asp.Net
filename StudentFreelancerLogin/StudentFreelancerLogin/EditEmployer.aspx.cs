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
    public partial class EditEmployer : System.Web.UI.Page
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
        void Ekle()
        {
            try
            {
                SqlCommand ekle = new SqlCommand("Update Kullanici Set Is_telefon=@p1,Is_mail=@p2,Is_Ulke=@p3,Is_Sehir=@p4,Is_ad=@p5,Is_adres=@p6,Is_hakkinda=@p7,Is_web=@p8,Is_fb=@p9,Is_tw=@p10 Where Kullanici_adi=@Kullanici", bgl.Baglanti());
                ekle.Parameters.AddWithValue("@p1", TB_Tel.Text);
                ekle.Parameters.AddWithValue("@p2", TB_Mail.Text);
                ekle.Parameters.AddWithValue("@p3", TB_Country.Text);
                ekle.Parameters.AddWithValue("@p4", TB_City.Text);
                ekle.Parameters.AddWithValue("@p5", TB_SirketAd.Text);
                ekle.Parameters.AddWithValue("@p6", TB_Adress.Text);
                ekle.Parameters.AddWithValue("@p7", TB_Hakkimda.Text);
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