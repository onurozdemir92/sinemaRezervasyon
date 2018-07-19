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
    public partial class sayfa : System.Web.UI.Page
    {

        DataSet ds = new DataSet();
        OleDbConnection baglanti = new OleDbConnection();
        string id;
        protected void Page_Load(object sender, EventArgs e)
        {
            baglanti.ConnectionString = "provider=Microsoft.Jet.OleDb.4.0; Data Source=" + Server.MapPath("Srezervasyon.mdb");

            OleDbCommand com7 = new OleDbCommand("Select *From sayfalar", baglanti);
            OleDbDataAdapter ad7 = new OleDbDataAdapter(com7);
            DataSet ds7 = new DataSet();
            ad7.Fill(ds7, "sayfalar");
            Panel1.Controls.Clear();
            baglanti.Open();
            for (int i = 0;i < ds7.Tables[0].Rows.Count;i++)
            {
                Literal lt = new Literal();
                lt.Text= "<ul class='menu'><li><a  href='sayfa.aspx?id=" + ds7.Tables[0].Rows[i]["Kimlik"].ToString()+ "'>" + ds7.Tables[0].Rows[i]["baslik"].ToString() + "</a></li></ul>";
                Panel1.Controls.Add(lt);
            }
            baglanti.Close();

            if (Request.QueryString.Count > 0) id = Request.QueryString["id"];
           
            else { Response.Redirect("index.aspx"); }
            id = Request.QueryString["id"];
            try
            {
                
                DataSet ds8 = new DataSet();
                ds8.Clear();
                baglanti.ConnectionString = "provider=Microsoft.Jet.OleDb.4.0; Data Source=" + Server.MapPath("Srezervasyon.mdb");

                OleDbCommand com8 = new OleDbCommand("Select *From sayfalar where Kimlik=" + Convert.ToInt32(id) + "", baglanti);
                OleDbDataAdapter ad8 = new OleDbDataAdapter(com8);

                ad8.Fill(ds8, "sayfalar");
                Panel2.Controls.Clear();
                baglanti.Open();
                Literal lt2 = new Literal();
                lt2.Text = ds8.Tables["sayfalar"].Rows[0]["icerik"].ToString();

                Panel2.Controls.Add(lt2);
                baglanti.Close();
            }
            catch { }

        }
    }
}