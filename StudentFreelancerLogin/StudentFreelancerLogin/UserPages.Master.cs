using System;
using System.Collections.Generic;
using System.Linq;
using System.Data.SqlClient;
using System.Data;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StudentFreelancerLogin
{
    public partial class UserPages : System.Web.UI.MasterPage
    {
        transaction bgl = new transaction();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Kullanici"] == null)
            {
                Response.Redirect("Default.aspx");
            }
            birlestir();
            // resim();
        }
        void birlestir()
        {
            SqlCommand birlestir = new SqlCommand("Select Kullanici.Kullanici_isim,Kullanici.Kullanici_adi,Galeri.Resim_adi From Galeri Inner Join Kullanici on(Galeri.Kullanici_adi = Kullanici.Kullanici_adi) Where Kullanici.Kullanici_adi=@p1", bgl.Baglanti());
            birlestir.Parameters.AddWithValue("@p1", Session["Kullanici"].ToString());
            SqlDataReader dr = birlestir.ExecuteReader();
            if (dr.Read())
            {
                LB_isim.Text = dr["Kullanici_isim"].ToString();
                Img_resim.ImageUrl = dr["Resim_adi"].ToString();
            }
            bgl.Baglanti().Close();
        }
        //void resim()
        //{
        //    SqlCommand resim = new SqlCommand("Select * From Galeri Where Kullanici_adi=@p1", bgl.Baglanti());
        //    resim.Parameters.AddWithValue("@p1", Session["Kullanici"].ToString());
        //    SqlDataReader dr = resim.ExecuteReader();
        //    Rpt_resim.DataSource = dr;
        //    Rpt_resim.DataBind();
        //    bgl.Baglanti().Close();
        //}
        protected void cikis_ServerClick(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("Default.aspx");
        }
    }
}