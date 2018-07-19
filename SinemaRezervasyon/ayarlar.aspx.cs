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
    public partial class ayarlar : System.Web.UI.Page
    {
        string link,varsayilanlink;
        OleDbConnection baglanti = new OleDbConnection();
        void ayargetir()
        {
            //try
            //{
                
                    baglanti.ConnectionString = "provider=Microsoft.Jet.OleDb.4.0; Data Source=" + Server.MapPath("Srezervasyon.mdb");


                       OleDbDataAdapter da9 = new OleDbDataAdapter("Select * from uyeler  where  Kimlik=" + Session["uyeid"], baglanti);
                     DataSet ds9 = new DataSet();
                    baglanti.Open();
                    da9.Fill(ds9);
                    TextBox1.Text = ds9.Tables[0].Rows[0]["uyeadi"].ToString();
                    TextBox2.Text = ds9.Tables[0].Rows[0]["uyesoyadi"].ToString();
                    TextBox3.Text = ds9.Tables[0].Rows[0]["dogumtarihi"].ToString();
                    DropDownList1.SelectedValue = ds9.Tables[0].Rows[0]["cinsiyet"].ToString();
                    TextBox5.Text = ds9.Tables[0].Rows[0]["eposta"].ToString();
                    TextBox6.Text = ds9.Tables[0].Rows[0]["ceptel"].ToString();
                    TextBox7.Text = ds9.Tables[0].Rows[0]["sifre"].ToString();
                    varsayilanlink= ds9.Tables[0].Rows[0]["profilresim"].ToString();




            baglanti.Close();
                
            //}
            //catch
            //{
            //    baglanti.Close();
            //}
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["uyeid"] = 1;
           if(!IsPostBack)
            ayargetir();

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
            if(TextBox1.Text!=""&& TextBox2.Text != ""&& TextBox3.Text != ""&& TextBox5.Text != ""&& TextBox6.Text != ""&& TextBox7.Text != "")
            {
                if (FileUpload1.HasFile)
                {
                    FileUpload1.SaveAs(Server.MapPath("dosyalar\\uyeler\\") + Session["uyeid"] + ".jpg");
                    link = "/dosyalar/uyeler/" + Session["uyeid"] + ".jpg";
                    baglanti.ConnectionString = "provider=Microsoft.Jet.OleDb.4.0; Data Source=" + Server.MapPath("Srezervasyon.mdb");
                    baglanti.Open();
                    OleDbCommand com = new OleDbCommand("update uyeler set uyeadi='" + TextBox1.Text + "',uyesoyadi='" + TextBox2.Text + "',dogumtarihi='" + TextBox3.Text + "',cinsiyet='" + DropDownList1.SelectedItem + "',eposta='" + TextBox5.Text + "',ceptel='" + TextBox6.Text + "',sifre='" + TextBox7.Text + "',profilresim='" + link + "' where Kimlik=" + Convert.ToInt32(Session["uyeid"]) + "",baglanti);
                    com.ExecuteNonQuery();
                    baglanti.Close();
                    Response.Redirect("profil.aspx");
                }
                else
                {
                baglanti.ConnectionString = "provider=Microsoft.Jet.OleDb.4.0; Data Source=" + Server.MapPath("Srezervasyon.mdb");
                    baglanti.Open();
                    OleDbCommand com = new OleDbCommand("update uyeler set uyeadi='"+TextBox1.Text+"',uyesoyadi='"+TextBox2.Text+"',dogumtarihi='"+TextBox3.Text+"',cinsiyet='"+ DropDownList1.SelectedValue+"', eposta='"+TextBox5.Text+"',ceptel='"+TextBox6.Text+"',sifre='"+TextBox7.Text+"' WHERE Kimlik="+Convert.ToInt32(Session["uyeid"])+"",baglanti);
                    com.ExecuteNonQuery();
                    baglanti.Close();
                    Response.Redirect("profil.aspx");
                    
               }

            }
            else
            {

                Response.Write("Boş Alan Bırakmayınız");
            }
           
        }
    }
}