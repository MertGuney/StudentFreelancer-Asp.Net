using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Data.SqlClient;
using System.Data;
using System.Web.UI.WebControls;

namespace StudentFreelancerLogin
{
    public partial class Default : System.Web.UI.Page
    {
        transaction bgl = new transaction();
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        //bool Durumlar;
        //void Durum()
        //{
        //    baglan.Open();
        //    SqlCommand Kullanici = new SqlCommand("Select * From Kullanici Where Kullanici_adi=@Kullanici_adi",baglan);
        //    Kullanici.Parameters.AddWithValue("@Kullanici_adi", TB_UserName.Text);
        //    SqlDataReader oku = Kullanici.ExecuteReader();
        //    if (oku.Read())
        //    {
        //        Durumlar = true;
        //    }
        //    else
        //    {
        //        Durumlar = false;
        //    }
        //    baglan.Close();
        //}

        protected void BTN_Giris_Click(object sender, EventArgs e)
        {
            if (TB_UserName.Text == "" || TB_Password.Text == "")
            {
                LB_Bilgi.Text = "Kullanıcı adı veya şifrenizi giriniz";
            }
            else
            {
                SqlCommand Giris = new SqlCommand("Select * From Kullanici Where Kullanici_adi=@Kullanici_adi And Kullanici_sifre=@Kullanici_sifre", bgl.Baglanti());
                Giris.Parameters.AddWithValue("@Kullanici_adi", TB_UserName.Text);
                Giris.Parameters.AddWithValue("@Kullanici_sifre", TB_Password.Text);
                SqlDataReader oku = Giris.ExecuteReader();
                if (oku.Read())
                {
                    Session["Kullanici"] = oku["Kullanici_adi"].ToString();
                    Session["Kullanici_id"] = oku["Kullanici_id"].ToString();
                    Response.Redirect("HomePage.aspx");
                }
                else
                {
                    Session["Login"] = "false";
                    LB_Bilgi.Text = "Böyle Bir Kullanıcı Bulunamadı";
                }
            }
            bgl.Baglanti().Close();
        }
    }
}