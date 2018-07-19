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
    public partial class biletler : System.Web.UI.Page
    {
        string bilet;
        OleDbConnection baglanti = new OleDbConnection();

        void biletgetir()
        {
            Session["uyeid"] = 1;

            baglanti.ConnectionString = "provider=Microsoft.Jet.OleDb.4.0; Data Source=" + Server.MapPath("Srezervasyon.mdb");
            baglanti.Open();

            OleDbDataAdapter adap14 = new OleDbDataAdapter("Select b.Kimlik,b.koltukno,s.saat,sa.salonadi,f.filmadi From biletler as b,seanslar as s,filmler as f,salonlar as sa WHERE uyeid="+Session["uyeid"]+" and b.seansid=s.Kimlik and s.filmid=f.Kimlik and s.salonid=sa.Kimlik", baglanti);
            DataSet dc14 = new DataSet();
            adap14.Fill(dc14);
            if(dc14.Tables[0].Rows.Count<=0)
            {

                Literal1.Text = "Hiç Rezervasyonunuz Bulunmamaktadır";
            }
            GridView1.DataSource = dc14;
            GridView1.DataBind();
            baglanti.Close();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            biletgetir();
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            baglanti.ConnectionString = "provider=Microsoft.Jet.OleDb.4.0; Data Source=" + Server.MapPath("Srezervasyon.mdb");
            string bilet = GridView1.DataKeys[e.RowIndex].Values[0].ToString();
            baglanti.Open();
            OleDbCommand com30 = new OleDbCommand("DELETE FROM biletler WHERE Kimlik=" + bilet + "", baglanti);
            com30.ExecuteNonQuery();
            baglanti.Close();
            biletgetir();
        }
    }
}