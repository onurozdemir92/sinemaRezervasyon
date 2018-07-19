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
    public partial class filmler : System.Web.UI.Page
    {
        OleDbConnection baglanti = new OleDbConnection();
        void filmgetir()
        {
            try
            {
                baglanti.ConnectionString = "provider=Microsoft.Jet.OleDb.4.0; Data Source=" + Server.MapPath("Srezervasyon.mdb");

                OleDbCommand com2 = new OleDbCommand("Select *From filmler", baglanti);
                OleDbDataAdapter ad2 = new OleDbDataAdapter(com2);
                DataSet ds2 = new DataSet();
                baglanti.Open();
                ad2.Fill(ds2, "filmler");
                for (int i = 0; i < ds2.Tables[0].Rows.Count; i++)
                {


                    Literal ylt = new Literal();




                    ylt.Text = "<a href='film.aspx?filmid=" + ds2.Tables[0].Rows[i]["Kimlik"].ToString() + "'><div class='filmlerdiv'><img  class='filmresim2' src='" + ds2.Tables[0].Rows[i]["afislink"].ToString() + "'/><br><br><h1>" + ds2.Tables[0].Rows[i]["filmadi"].ToString() + "<h1></div></a>";

                    Panel1.Controls.Add(ylt);
                }
                baglanti.Close();
            }
            catch { }

        }
        protected void Page_Load(object sender, EventArgs e)
        {
            filmgetir();
        }
    }
}