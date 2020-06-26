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
    public partial class SearchJob : System.Web.UI.Page
    {
        transaction bgl = new transaction();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Kullanici"] == null)
            {
                Response.Redirect("Default.aspx");
            }
            //City();
            //Category();
            RPT();
        }
        //void City()
        //{
        //    SqlCommand sehir = new SqlCommand("Select * From Sehirler", bgl.Baglanti());
        //    SqlDataReader dr = sehir.ExecuteReader();
        //    DDLCitys.DataTextField = "Sehir_ad";
        //    DDLCitys.DataValueField = "Sehir_id";
        //    DDLCitys.DataSource = dr;
        //    DDLCitys.DataBind();
        //}
        //void Category()
        //{
        //    SqlCommand kategori = new SqlCommand("Select * From Kategoriler", bgl.Baglanti());
        //    SqlDataReader dr = kategori.ExecuteReader();
        //    DDLCategory.DataTextField = "Kategori_ad";
        //    DDLCategory.DataValueField = "Kategori_id";
        //    DDLCategory.DataSource = dr;
        //    DDLCategory.DataBind();
        //}
        void ara()
        {
            try
            {
                SqlDataAdapter src = new SqlDataAdapter("Select * from Projeler Where Proje_Baslik like '%" + TBsrc.Text + "%' And Kullanici_sehir like '%" + TB_Citys.Text + "%' And Proje_Kategori like '%" + TB_Category.Text + "%'", bgl.Baglanti());
                DataTable dt = new DataTable();
                src.Fill(dt);
                Rpt_Jobs.DataSource = dt;
                Rpt_Jobs.DataBind();
                bgl.Baglanti().Close();
            }
            catch (Exception)
            {
                TBsrc.Text = "Hata";
            }
        }
        void RPT()
        {
            SqlCommand Getir = new SqlCommand("Select * From Projeler Order by Proje_id desc", bgl.Baglanti());
            SqlDataReader dr = Getir.ExecuteReader();
            Rpt_Jobs.DataSource = dr;
            Rpt_Jobs.DataBind();
        }
    }
}