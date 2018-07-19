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
    public partial class profil : System.Web.UI.Page
    {
       public static string isim;
        OleDbConnection baglanti = new OleDbConnection();
        void bilgial()
        {
            baglanti.ConnectionString = "provider=Microsoft.Jet.OleDb.4.0; Data Source=" + Server.MapPath("Srezervasyon.mdb");


            OleDbDataAdapter da2 = new OleDbDataAdapter("Select * from uyeler  where  Kimlik=" + Session["uyeid"], baglanti);
            DataSet ds2 = new DataSet();
            baglanti.Open();
            da2.Fill(ds2);
            
            baglanti.Close();
            Literal lt = new Literal();

            Literal1.Text = ds2.Tables[0].Rows[0]["uyeadi"].ToString();
            Literal2.Text= ds2.Tables[0].Rows[0]["uyesoyadi"].ToString();
            Literal3.Text= ds2.Tables[0].Rows[0]["dogumtarihi"].ToString();
            Literal4.Text= ds2.Tables[0].Rows[0]["cinsiyet"].ToString();
            lt.Text = "<img  class='profilresim'  src='" + ds2.Tables[0].Rows[0]["profilresim"].ToString() + "'/>";
            Panel1.Controls.Clear();
            Panel1.Controls.Add(lt);


        }
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["uyeid"] = 1;
            
            bilgial();
            try
            {
                baglanti.ConnectionString = "provider=Microsoft.Jet.OleDb.4.0; Data Source=" + Server.MapPath("Srezervasyon.mdb");


                OleDbDataAdapter da2 = new OleDbDataAdapter("Select * from uyeler  where  Kimlik=" + Session["uyeid"], baglanti);
                DataSet ds2 = new DataSet();
                baglanti.Open();
                da2.Fill(ds2);
                isim = ds2.Tables[0].Rows[0]["uyeadi"].ToString() + " " + ds2.Tables[0].Rows[0]["uyesoyadi"].ToString();
                baglanti.Close();
            }
            catch
            {
                baglanti.Close();
                isim = "Profil";
            }
           


        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
           
        }

        protected void Unnamed1_Tick(object sender, EventArgs e)
        {
            Panel2.Controls.Clear();
            
            Random r = new Random();

            for (int i = 0; i < 126; i++)
            {
                Literal lt = new Literal();
                lt.Text = "<div style='background-color:rgb(" + r.Next(0, 255).ToString() + "," + r.Next(0, 255).ToString() + "," + r.Next(0, 255).ToString() + ")' class='bilet'></div>";

                Panel2.Controls.Add(lt);
                
            }
        }
    }
}