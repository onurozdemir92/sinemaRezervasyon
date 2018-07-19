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
    public partial class admin : System.Web.UI.Page
    {
        OleDbConnection baglanti = new OleDbConnection();
        
        
        
        protected void Page_Load(object sender, EventArgs e)
        {
            Button1.BackColor = System.Drawing.ColorTranslator.FromHtml("#80FB7C");
            Session["giriskontrol"] = "0";
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            baglanti.ConnectionString = "provider=Microsoft.Jet.OleDb.4.0; Data Source=" + Server.MapPath("Srezervasyon.mdb");
            baglanti.Open();
            OleDbCommand komutsorgu = new OleDbCommand("SELECT * From adminler WHERE kullaniciadi='" +TextBox1.Text+ "' and sifre='" +TextBox2.Text+ "'", baglanti);
            OleDbDataReader okusorgu = komutsorgu.ExecuteReader();

            if (okusorgu.Read())
            {
                baglanti.Close();
                Session["giriskontrol"] = "1";
                Response.Redirect("adminPanel.aspx");
                

               
            }
            else
            {
                Response.Write("Kullanıcı Adı Veya Şifre Yanlış");
                baglanti.Close();
            }
        }
    }
}