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
    public partial class PassedJob : System.Web.UI.Page
    {
        transaction bgl = new transaction();
        //String Proje_id = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Kullanici"] == null)
            {
                Response.Redirect("Default.aspx");
            }
            Oku();
        }
        void Oku()
        {
            SqlCommand getir = new SqlCommand("Select * From Projeler Where Proje_durum='Tamamlandi' And Kullanici_adi=@Kullanici_adi", bgl.Baglanti());
            getir.Parameters.AddWithValue("@Kullanici_adi", Session["Kullanici"].ToString());
            SqlDataReader dr = getir.ExecuteReader();
            RptJobs.DataSource = dr;
            RptJobs.DataBind();
            bgl.Baglanti().Close();
        }
    }
}