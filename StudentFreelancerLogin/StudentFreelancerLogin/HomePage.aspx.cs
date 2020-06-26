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
    public partial class HomePage : System.Web.UI.Page
    {
        transaction bgl = new transaction();

        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (Session["Kullanici"] == null)
                    Response.Redirect("Default.aspx");
            }
            catch (Exception)
            {
                Response.Redirect("Default.aspx");
            }
            Sinirla();
            //Oku();

        }
        void Sinirla()
        {
            SqlCommand sinir = new SqlCommand("Select Top 2 * From Projeler Order by Proje_id desc", bgl.Baglanti());
            SqlDataReader dr = sinir.ExecuteReader();
            Rpt_Jobs.DataSource = dr;
            Rpt_Jobs.DataBind();
            bgl.Baglanti().Close();
        }
    }
}