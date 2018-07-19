using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;
using System.Data;

namespace SinemaRezervasyon
{
    public partial class film : System.Web.UI.Page
    {
        OleDbConnection baglanti = new OleDbConnection();
        string filmid;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString.Count > 0) filmid = Request.QueryString["filmid"];

            else { Response.Redirect("index.aspx"); }
            
            try
            {

                DataSet ds8 = new DataSet();
                ds8.Clear();
                baglanti.ConnectionString = "provider=Microsoft.Jet.OleDb.4.0; Data Source=" + Server.MapPath("Srezervasyon.mdb");

                OleDbCommand com8 = new OleDbCommand("Select *From filmler where Kimlik=" + Convert.ToInt32(filmid) + "", baglanti);
                OleDbDataAdapter ad8 = new OleDbDataAdapter(com8);

                ad8.Fill(ds8, "filmler");
                Panel1.Controls.Clear();
                baglanti.Open();
                Literal lt2 = new Literal();
                lt2.Text = " <img  class='filmresim' src='" + ds8.Tables["filmler"].Rows[0]["afislink"].ToString()+"'/>";

                Panel1.Controls.Add(lt2);
                Literal1.Text = ds8.Tables["filmler"].Rows[0]["filmadi"].ToString();
                Literal2.Text = ds8.Tables["filmler"].Rows[0]["filmturu"].ToString();
                Literal3.Text = ds8.Tables["filmler"].Rows[0]["filmsure"].ToString();
                Literal4.Text = ds8.Tables["filmler"].Rows[0]["oyuncular"].ToString();
                Literal5.Text = ds8.Tables["filmler"].Rows[0]["yonetmen"].ToString();
                Literal6.Text = ds8.Tables["filmler"].Rows[0]["vizyontarihi"].ToString();
                Literal7.Text = ds8.Tables["filmler"].Rows[0]["aciklama"].ToString();
                baglanti.Close();
            }
            catch { }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("rezervasyon.aspx");
        }
    }
}