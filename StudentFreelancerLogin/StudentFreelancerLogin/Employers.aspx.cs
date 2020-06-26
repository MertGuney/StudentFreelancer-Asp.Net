using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StudentFreelancerLogin
{
    public partial class Employers : System.Web.UI.Page
    {
        transaction bgl = new transaction();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Kullanici"] == null)
                Response.Redirect("Default.aspx");
            RPT();
            //City();
            //Category();
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
        void RPT()
        {
            SqlCommand Getir = new SqlCommand("Select * From Kullanici Where Kullanici_durum='Employer'", bgl.Baglanti());
            SqlDataReader dr = Getir.ExecuteReader();
            Rpt_Emp.DataSource = dr;
            Rpt_Emp.DataBind();
            bgl.Baglanti().Close();
        }
        void ara()
        {
            try
            {
                SqlDataAdapter src = new SqlDataAdapter("Select * from Kullanici Where Kullanici_isim like '%" + TB_src.Text + "%' And Kullanici_Sehir like '%" + TB_Citys.Text + "%'", bgl.Baglanti());
                DataTable dt = new DataTable();
                src.Fill(dt);
                Rpt_Emp.DataSource = dt;
                Rpt_Emp.DataBind();
                bgl.Baglanti().Close();
            }
            catch (Exception)
            {
                TB_src.Text = "Hata";
            }
        }

        protected void BTN_Src_ServerClick(object sender, EventArgs e)
        {
            ara();
        }
    }
}