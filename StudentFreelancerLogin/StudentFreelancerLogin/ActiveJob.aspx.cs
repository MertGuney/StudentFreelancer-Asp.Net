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
    public partial class ActiveJob : System.Web.UI.Page
    {
        transaction bgl = new transaction();
        string Proje_id = "";
        string islem = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Kullanici"] == null)
            {
                Response.Redirect("Default.aspx");
            }
            else
            {
                Oku();
            }
            if (Page.IsPostBack == false)
            {
                Proje_id = Request.QueryString["Proje_id"];
                islem = Request.QueryString["islem"];
            }

            if (islem == "sil")
            {
                SqlCommand sil = new SqlCommand("Delete From Projeler Where Proje_id=@p1", bgl.Baglanti());
                sil.Parameters.AddWithValue("@p1", Proje_id);
                sil.ExecuteNonQuery();
                bgl.Baglanti().Close();
            }
        }
        void Oku()
        {
            SqlCommand getir = new SqlCommand("Select * From Projeler Where Kullanici_adi=@Kullanici_adi", bgl.Baglanti());
            getir.Parameters.AddWithValue("@Kullanici_adi", Session["Kullanici"].ToString());
            SqlDataReader dr = getir.ExecuteReader();
            RptJobs.DataSource = dr;
            RptJobs.DataBind();
            bgl.Baglanti().Close();
        }

    }
}