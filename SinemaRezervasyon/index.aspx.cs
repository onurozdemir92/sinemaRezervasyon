using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data.OleDb;
using System.Data;

namespace SinemaRezervasyon
{
    public partial class index : System.Web.UI.Page
    {
       public string link2;
        DataSet ds = new DataSet();
        OleDbConnection baglanti = new OleDbConnection();
        string[] klasordekiler;
        public string link = "";
        void menugetir()
        {
            baglanti.ConnectionString = "provider=Microsoft.Jet.OleDb.4.0; Data Source=" + Server.MapPath("Srezervasyon.mdb");

            OleDbCommand com7 = new OleDbCommand("Select *From sayfalar", baglanti);
            OleDbDataAdapter ad7 = new OleDbDataAdapter(com7);
            DataSet ds7 = new DataSet();
            ad7.Fill(ds7, "sayfalar");
            Panel3.Controls.Clear();
            baglanti.Open();
            for (int i = 0; i < ds7.Tables[0].Rows.Count; i++)
            {
                Literal lt = new Literal();
                lt.Text = "<a href='sayfa.aspx?id=" + ds7.Tables[0].Rows[i]["Kimlik"].ToString() + "'><div class='menubutton'>" + ds7.Tables[0].Rows[i]["baslik"].ToString() + "</div></a>";
                Panel3.Controls.Add(lt);
            }
            baglanti.Close();
        }
        void isimgetir()
        {
            try
            {
                if (Session["uysgiris"] == "1")
                {
                    baglanti.ConnectionString = "provider=Microsoft.Jet.OleDb.4.0; Data Source=" + Server.MapPath("Srezervasyon.mdb");


                    OleDbDataAdapter da9 = new OleDbDataAdapter("Select * from uyeler  where  Kimlik=" + Session["uyeid"], baglanti);
                    DataSet ds9 = new DataSet();
                    baglanti.Open();
                    da9.Fill(ds9);
                    LinkButton3.Text= ds9.Tables[0].Rows[0]["uyeadi"].ToString() + " " + ds9.Tables[0].Rows[0]["uyesoyadi"].ToString();
                    Image1.ImageUrl = ds9.Tables[0].Rows[0]["profilresim"].ToString();



                    baglanti.Close();
                }
            }
            catch
            {
                baglanti.Close();
            }
        }
        void reklamcagir()
        {
            try
            {
                baglanti.ConnectionString = "provider=Microsoft.Jet.OleDb.4.0; Data Source=" + Server.MapPath("Srezervasyon.mdb");

                OleDbCommand com7 = new OleDbCommand("Select *From reklamlar", baglanti);
                OleDbDataAdapter ad7 = new OleDbDataAdapter(com7);
                DataSet ds7 = new DataSet();
                baglanti.Open();
                Random a = new Random();

                ad7.Fill(ds7, "filmler");
                int sayi = a.Next(0, ds7.Tables[0].Rows.Count);
                Literal ylt = new Literal();


                Literal4.Text = ds7.Tables[0].Rows[sayi]["reklamaciklama"].ToString();
                LinkButton2.Text = ds7.Tables[0].Rows[sayi]["reklambaslik"].ToString();
                
                ylt.Text = "<a href=https://" + ds7.Tables[0].Rows[sayi]["reklamlink"].ToString() + "><img class='reklamlar'src='" + ds7.Tables[0].Rows[sayi]["reklamresimlink"].ToString() + "'/></a>";
                Panel2.Controls.Clear();
                Panel2.Controls.Add(ylt);
                baglanti.Close();
            }
            catch {
                }
        }

        void resimgetir()
        {
            klasordekiler = Directory.GetFiles(Server.MapPath("dosyalar/slaytresimler"));
            
             
            for (int i = klasordekiler.Length-1; i >=0; i--)
            {
                link += "<li><img src=\"dosyalar/slaytresimler/"+  Path.GetFileName(klasordekiler[i]) + "\" /></li>";
            }


        }
        protected void Page_Load(object sender, EventArgs e)
        {
            isimgetir();
            reklamcagir();
            menugetir();
            Timer1.Enabled = true;




            baglanti.ConnectionString = "provider=Microsoft.Jet.OleDb.4.0; Data Source=" + Server.MapPath("Srezervasyon.mdb");
            
            OleDbCommand com = new OleDbCommand("Select *From kampanyalar",baglanti);
            OleDbDataAdapter ad = new OleDbDataAdapter(com);
            DataSet ds = new DataSet();
            baglanti.Open();
            ad.Fill(ds, "kampanyalar");
            baglanti.Close();
            Literal1.Text = "<marquee align='middle'  height='400px' width='300px'  onmouseover='this.stop();' onmouseout='this.start();' direction='up' scrollamount='5' scrolldelay='100'>";
            for (int i = 0; i <= ds.Tables[0].Rows.Count-1; i++)
            {
                Literal1.Text += "<center><h2>" + ds.Tables[0].Rows[i]["kampanyabaslik"] + "</h2><center><img src=\"dosyalar/kampanyalar/" + ds.Tables[0].Rows[i]["kampanyaresim"]+ "\" width=\"100%\"/><span>" + ds.Tables[0].Rows[i]["kampanyaaciklama"] + "</span><br/><span  style=\"float:left;\">" + ds.Tables[0].Rows[i]["kbast"] + "</span><span style=\"float:right;\">" + ds.Tables[0].Rows[i]["kbitt"] + "</span><br><hr>";

            }
            Literal1.Text += "</marquee>";

            if (Session["uysgiris"] == "1" & Session["uysgiris"] !=null)
            {
                Button1.Visible = false;
                Button2.Visible = true;
                
            }
            else
            {
                Button1.Visible = true;
                Button2.Visible = false;
            }
            
            resimgetir();

           try
           {
                baglanti.ConnectionString = "provider=Microsoft.Jet.OleDb.4.0; Data Source=" + Server.MapPath("Srezervasyon.mdb");

                OleDbCommand com2 = new OleDbCommand("Select *From filmler", baglanti);
                OleDbDataAdapter ad2 = new OleDbDataAdapter(com2);
               DataSet ds2 = new DataSet();
                baglanti.Open();
                Random a = new Random();

               ad2.Fill(ds2, "filmler");
               int sayi = a.Next(0, ds2.Tables[0].Rows.Count);
                Literal ylt = new Literal();
               
               
                Literal3.Text = ds2.Tables[0].Rows[sayi]["aciklama"].ToString();

                LinkButton1.Text = ds2.Tables[0].Rows[sayi]["filmadi"].ToString();
                LinkButton1.Attributes.Add("href","film.aspx ? filmid ="+ds2.Tables[0].Rows[sayi]["Kimlik"].ToString());
                
                ylt.Text = "<a href='film.aspx?filmid=" + ds2.Tables[0].Rows[sayi]["Kimlik"].ToString()+ "'><img  class='filmresim' src='" + ds2.Tables[0].Rows[sayi]["afislink"].ToString() + "'/></a>";
                
                Panel1.Controls.Add(ylt);
                baglanti.Close();
            }
            catch { }


        }

        protected void Button2_Click(object sender, EventArgs e)
        {
           
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("uye.aspx");
        }

        protected void Button2_Click1(object sender, EventArgs e)
        {
            Session["uysgiris"] = "0";
            Session["uyeid"] = null;
            Response.Redirect("index.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("rezervasyon.aspx");
        }

        protected void Timer1_Tick(object sender, EventArgs e)
        {
            


          

        }

        protected void Timer1_Tick1(object sender, EventArgs e)
        {
            try
            {
                baglanti.ConnectionString = "provider=Microsoft.Jet.OleDb.4.0; Data Source=" + Server.MapPath("Srezervasyon.mdb");

                OleDbCommand com2 = new OleDbCommand("Select *From filmler", baglanti);
                OleDbDataAdapter ad2 = new OleDbDataAdapter(com2);
                DataSet ds2 = new DataSet();
                baglanti.Open();
                Random a = new Random();

                ad2.Fill(ds2, "filmler");
                int sayi = a.Next(0, ds2.Tables[0].Rows.Count);
                Literal ylt = new Literal();
               
                
                Literal3.Text = ds2.Tables[0].Rows[sayi]["aciklama"].ToString();
                LinkButton1.Text = ds2.Tables[0].Rows[sayi]["filmadi"].ToString();
                LinkButton1.Attributes.Add("href", "film.aspx?filmid="+ds2.Tables[0].Rows[sayi]["Kimlik"].ToString());
                ylt.Text = "<a href='film.aspx?filmid=" + ds2.Tables[0].Rows[sayi]["Kimlik"].ToString() + "'><img class='filmresim'  src='" + ds2.Tables[0].Rows[sayi]["afislink"].ToString() + "'/></a>";
                Panel1.Controls.Clear();
                Panel1.Controls.Add(ylt);
                baglanti.Close();
            }
            catch { }

        }

        protected void Timer2_Tick(object sender, EventArgs e)
        {
           
        }

        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            
        }

        protected void LinkButton3_Click1(object sender, EventArgs e)
        {
            Response.Redirect("profil.aspx");
        }
    }
}
