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
    public partial class Register : System.Web.UI.Page
    {
        transaction bgl = new transaction();
        protected void Page_Load(object sender, EventArgs e)
        {
        }
        bool Durum;
        void Kontrol()
        {
            SqlCommand bilgi = new SqlCommand("Select * From Kullanici Where Kullanici_adi=@p1 Or Kullanici_mail=@p2", bgl.Baglanti());
            bilgi.Parameters.AddWithValue("@p1", TB_UserName.Text);
            bilgi.Parameters.AddWithValue("@p2", TB_Mail.Text);
            SqlDataReader dr = bilgi.ExecuteReader();
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
        protected void BTN_Kaydol_Click(object sender, EventArgs e)
        {
            Kontrol();
            if (Durum==false)
            {
                try
                {
                    SqlCommand kayıt = new SqlCommand("Insert Into Kullanici(Kullanici_isim,Kullanici_adi,Kullanici_mail,Kullanici_sifre,Kullanici_durum) Values(@p1,@p2,@p3,@p4,@p5)", bgl.Baglanti());
                    kayıt.Parameters.AddWithValue("@p1", TB_Name.Text);
                    kayıt.Parameters.AddWithValue("@p2", TB_UserName.Text);
                    kayıt.Parameters.AddWithValue("@p3", TB_Mail.Text);
                    kayıt.Parameters.AddWithValue("@p4", TB_Password.Text);
                    kayıt.Parameters.AddWithValue("@p5", RBLChoose.SelectedValue);
                    kayıt.ExecuteNonQuery();
                    bgl.Baglanti().Close();
                }
                catch (Exception)
                {
                    LB_Bilgi.Text = "Bir Hata Oluştu";
                }
            }
            else
            {
                LB_Bilgi.Text = "Üzgünüz bu kullanıcı adı daha önce alınmış ya da daha önce kullanılan bir mail adresi var.";
            }
            

        }
    }
}