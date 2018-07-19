using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;
using System.Data;
using System.Net.Mail;
using System.Net;


namespace SinemaRezervasyon
{
    public partial class uye : System.Web.UI.Page
    {
        string sifre;
        OleDbConnection baglanti = new OleDbConnection();
        OleDbCommand komut = new OleDbCommand();
        OleDbDataAdapter adr = new OleDbDataAdapter();
        DataSet dts = new DataSet();

        protected void Page_Load(object sender, EventArgs e)
        {
           


            if (Session["uysgiris"] == "1")
            {
                Response.Redirect("index.aspx");
            }

            Button1.Attributes.Add("onmouseover", "this.style.backgroundColor='#4B4B4B'");
            Button1.Attributes.Add("onmouseout", "this.style.backgroundColor='#322F2F'");
            Button2.Attributes.Add("onmouseover", "this.style.backgroundColor='#4B4B4B'");
            Button2.Attributes.Add("onmouseout", "this.style.backgroundColor='#322F2F'");
            if(!IsPostBack)
            MultiView1.ActiveViewIndex = 0;

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 0;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 1;
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            if (TextBox5.Text != TextBox6.Text)
                Response.Write("Epostalar Aynı Olmalıdır!");
            else if (TextBox8.Text != TextBox9.Text)
                Response.Write("Şifreler Aynı Olmalıdır!!");
            else if (TextBox3.Text == "" & TextBox4.Text == "" & TextBox5.Text == "" & TextBox7.Text == "" & TextBox8.Text == "")   
            Response.Write("Lütfen Eksiksiz Doldurunuz!");
            else if(TextBox8.Text.Length<6)
                Response.Write("Sifre En Az 6 Karakter Olmalıdır!!");


            else
            {
                try
                {
                    baglanti.ConnectionString = "provider=Microsoft.Jet.OleDb.4.0; Data Source=" + Server.MapPath("Srezervasyon.mdb");
                    baglanti.Open();
                    OleDbCommand cmd1 = new OleDbCommand();
                    cmd1.Connection = baglanti;
                    cmd1.CommandText = "insert into uyeler (uyeadi,uyesoyadi,dogumtarihi,cinsiyet,eposta,ceptel,sifre) Values ('" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox10.Text + "','"+ DropDownList1.Text +"','" + TextBox5.Text + "','" + TextBox7.Text + "','" + TextBox8.Text + "')";
                
                    cmd1.ExecuteNonQuery();
                    baglanti.Close();
                   

                }
               catch
               {
                   Response.Write("Bağlantı Hatası!!");
                   baglanti.Close();
                }
                try
                {
                    SmtpClient sc = new SmtpClient();
                    sc.Port = 587;
                    sc.Host = "smtp.live.com";
                    sc.EnableSsl = true;
                    sc.Credentials = new NetworkCredential("onurrahmi74@hotmail.com", "1992ozdemir19923");
                    MailMessage mail = new MailMessage();

                    mail.From = new MailAddress("onurrahmi74@hotmail.com", "Sinema Rezervasyon");

                    mail.To.Add(TextBox5.Text);
                    mail.Subject = "Üye Kaydı";
                    mail.IsBodyHtml = true;
                    mail.Body = "Sitemize Üye Olduğunuz İçin Teşekkür Ederiz.";

                    sc.Send(mail);
                }
                catch { }

                MultiView1.ActiveViewIndex = 0;

            }
            
           
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            try
             {

            baglanti.ConnectionString = "provider=Microsoft.Jet.OleDb.4.0; Data Source=" + Server.MapPath("Srezervasyon.mdb");

            baglanti.Open();
                OleDbCommand komutsorgu = new OleDbCommand("SELECT * From uyeler WHERE eposta='" + TextBox1.Text + "' and sifre='" + TextBox2.Text + "'", baglanti);
                OleDbDataReader okusorgu = komutsorgu.ExecuteReader();
                if (okusorgu.Read())
                {
                    
                    Session["uysgiris"] = "1";
                    


                    OleDbDataAdapter da = new OleDbDataAdapter("Select * from uyeler where eposta='" + TextBox1.Text +"'", baglanti);
                    DataSet ds = new DataSet();
                    
                    da.Fill(ds);
                    Session["uyeid"] = ds.Tables[0].Rows[0]["Kimlik"];
                    baglanti.Close();
                    Response.Redirect("index.aspx");
                    
                }
                else
                {
                    Response.Write("Böyle Bir Kayıt Bulunmamaktadır!!");
                    baglanti.Close();
                }
           }
           catch
             {
               Response.Write("Bağlantı Hatası Oluştu Lütfen Tekrar Deneyiniz!!");
            }
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 2;
            Label1.Text = "";
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            try
            {
                baglanti.ConnectionString = "provider=Microsoft.Jet.OleDb.4.0; Data Source=" + Server.MapPath("Srezervasyon.mdb");


                OleDbDataAdapter da = new OleDbDataAdapter("Select * from uyeler where eposta Like '" + TextBox11.Text + "%'", baglanti);
                DataSet ds = new DataSet();
                baglanti.Open();
                da.Fill(ds, "uyeler");
                sifre = ds.Tables[0].Rows[0]["sifre"].ToString();
                baglanti.Close();
                Label1.Text = "Mail Gönderiliyor";

                try
                {
                    

                    SmtpClient sc = new SmtpClient();
                    sc.Port = 587;
                    sc.Host = "smtp.live.com";
                    sc.EnableSsl = true;
                    sc.Credentials = new NetworkCredential("onurrahmi74@hotmail.com", "1992ozdemir19923");
                    MailMessage mail = new MailMessage();

                    mail.From = new MailAddress("onurrahmi74@hotmail.com", "Sinema Rezervasyon");

                    mail.To.Add(TextBox11.Text);
                    mail.Subject = "Şifremi Unuttum";
                    mail.IsBodyHtml = true;
                    mail.Body = "Şifreniz:" + sifre;

                    sc.Send(mail);
                    Label1.Text = "Şifreniz Mail Adresinize Gönderilmiştir.";
                }
                catch { Response.Write("Mail gönderirken Bir Hata Oluştu Lütfen Mail Adresiniz Kontrol Edip Tekrar Deneyiniz");
                    Label1.Text = "Hata!";


                }
            }
            catch
            {
                Response.Write("Hata Olustu Lütfen Tekrar Deneyiniz");
                baglanti.Close();
            }
            
        }
    }
}