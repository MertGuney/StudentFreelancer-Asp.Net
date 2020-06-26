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
    public partial class Application : System.Web.UI.Page
    {
        transaction bgl = new transaction();
        String Proje_id = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Kullanici"] == null)
            {
                Response.Redirect("Default.aspx");
            }
            Proje_id = Request.QueryString["Proje_id"];
            Oku();
        }
        void Oku()
        {
            SqlCommand getir = new SqlCommand("Select * From Projeler Where Kullanici_adi=@Kullanici_adi", bgl.Baglanti());
            getir.Parameters.AddWithValue("@Kullanici_adi", Session["Kullanici"].ToString());
            SqlDataReader dr = getir.ExecuteReader();
            RptApp.DataSource = dr;
            RptApp.DataBind();
            bgl.Baglanti().Close();
        }
    }
}