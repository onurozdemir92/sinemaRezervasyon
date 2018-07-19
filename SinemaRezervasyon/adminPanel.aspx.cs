using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;
using System.Data;
using System.IO;
     

namespace SinemaRezervasyon
{
    public partial class adminPanel : System.Web.UI.Page
    {
        string link,uzanti,link2,link3;
        int secilenresim;
        OleDbConnection baglanti = new OleDbConnection();
        OleDbCommand komut = new OleDbCommand();
        OleDbDataAdapter adr = new OleDbDataAdapter();
        DataSet dts = new DataSet();
        string[] klasordekiler;
        string[] resimler;
        
        void texttemizle()
        {
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            TextBox5.Text = "";
            TextBox6.Text = "";
            TextBox7.Text = "";
            TextBox8.Text = "";
           
            TextBox12.Text = "";
            TextBox13.Text = "";
            TextBox14.Text = "";
            TextBox15.Text = "";
            TextBox16.Text = "";
            TextBox17.Text = "";
            TextBox18.Text = "";
            TextBox19.Text = "";
            TextBox20.Text = "";
            TextBox21.Text = "";
            TextBox22.Text = "";
            TextBox23.Text = "";
            TextBox24.Text = "";
            TextBox25.Text = "";
            TextBox26.Text = "";
            TextBox27.Text = "";
            TextBox28.Text = "";

            TextBox29.Text = "";
        }


        void resimgoster()
        {
            klasordekiler = Directory.GetFiles(Server.MapPath("dosyalar/slaytresimler"));
           
            resimler = new string[klasordekiler.Count()];
            for (int i = 0; i < klasordekiler.Count(); i++)
            {
                resimler[i] = ("dosyalar/slaytresimler/" + Path.GetFileName(klasordekiler[i]));
                
            }
            DataList1.DataSource = resimler;
          
            
            DataList1.DataBind();

        }
        void sayfagetir()
        {
            baglanti.ConnectionString = "provider=Microsoft.Jet.OleDb.4.0; Data Source=" + Server.MapPath("Srezervasyon.mdb");
            baglanti.Open();
            
            OleDbDataAdapter adap10 = new OleDbDataAdapter("SELECT * FROM sayfalar", baglanti);
            DataSet dc10 = new DataSet();
            adap10.Fill(dc10, "sayfalar");
            GridView1.DataSource = dc10;
            GridView1.DataBind();
            baglanti.Close();
        }
        void filmgetir()
        {
            baglanti.ConnectionString = "provider=Microsoft.Jet.OleDb.4.0; Data Source=" + Server.MapPath("Srezervasyon.mdb");
            baglanti.Open();

            OleDbDataAdapter adap11 = new OleDbDataAdapter("SELECT * FROM filmler", baglanti);
            DataSet dc11 = new DataSet();
            adap11.Fill(dc11, "filmler");
            GridView2.DataSource = dc11;
            GridView2.DataBind();
            baglanti.Close();
        }
        void salongetir()
        {
            baglanti.ConnectionString = "provider=Microsoft.Jet.OleDb.4.0; Data Source=" + Server.MapPath("Srezervasyon.mdb");
            baglanti.Open();

            OleDbDataAdapter adap12 = new OleDbDataAdapter("SELECT * FROM salonlar", baglanti);
            DataSet dc12 = new DataSet();
            adap12.Fill(dc12, "salonlar");
            GridView3.DataSource = dc12;
            GridView3.DataBind();
            baglanti.Close();
        }
        void kampanyagetir()
        {
            baglanti.ConnectionString = "provider=Microsoft.Jet.OleDb.4.0; Data Source=" + Server.MapPath("Srezervasyon.mdb");
            baglanti.Open();

            OleDbDataAdapter adap13 = new OleDbDataAdapter("SELECT * FROM kampanyalar", baglanti);
            DataSet dc13 = new DataSet();
            adap13.Fill(dc13, "kampanyalar");
            GridView4.DataSource = dc13;
            GridView4.DataBind();
            baglanti.Close();
        }
        void reklamgetir()
        {
            baglanti.ConnectionString = "provider=Microsoft.Jet.OleDb.4.0; Data Source=" + Server.MapPath("Srezervasyon.mdb");
            baglanti.Open();

            OleDbDataAdapter adap19 = new OleDbDataAdapter("SELECT * FROM reklamlar", baglanti);
            DataSet dc19 = new DataSet();
            adap19.Fill(dc19, "reklamlar");
            GridView7.DataSource = dc19;
            GridView7.DataBind();
            baglanti.Close();
        }
        void seansgetir()
        {
            baglanti.ConnectionString = "provider=Microsoft.Jet.OleDb.4.0; Data Source=" + Server.MapPath("Srezervasyon.mdb");
            baglanti.Open();

            OleDbDataAdapter adap14 = new OleDbDataAdapter("Select seanslar.Kimlik,seanslar.saat,filmler.filmadi From seanslar INNER JOIN filmler  ON  seanslar.filmid=filmler.Kimlik ", baglanti);
            DataSet dc14 = new DataSet();
            adap14.Fill(dc14);
            GridView5.DataSource = dc14;
            GridView5.DataBind();
            baglanti.Close();
        }
        void kullanicigetir()
        {
            baglanti.ConnectionString = "provider=Microsoft.Jet.OleDb.4.0; Data Source=" + Server.MapPath("Srezervasyon.mdb");
            baglanti.Open();

            OleDbDataAdapter adap20 = new OleDbDataAdapter("Select *from adminler ", baglanti);
            DataSet dc20 = new DataSet();
            adap20.Fill(dc20);
            GridView6.DataSource = dc20;
            GridView6.DataBind();
            baglanti.Close();
        }
        void uyegetir()
        {
            baglanti.ConnectionString = "provider=Microsoft.Jet.OleDb.4.0; Data Source=" + Server.MapPath("Srezervasyon.mdb");
            baglanti.Open();

            OleDbDataAdapter adap29 = new OleDbDataAdapter("Select *from uyeler ", baglanti);
            DataSet dc29 = new DataSet();
            adap29.Fill(dc29);
            GridView8.DataSource = dc29;
            GridView8.DataBind();
            baglanti.Close();
        }
        void   seansbilgigetir()
        {
            baglanti.ConnectionString = "provider=Microsoft.Jet.OleDb.4.0; Data Source=" + Server.MapPath("Srezervasyon.mdb");
            baglanti.Open();

            OleDbDataAdapter adap14 = new OleDbDataAdapter("SELECT *FROM filmler ", baglanti);
            DataSet dc14 = new DataSet();
            adap14.Fill(dc14);
            DropDownList2.DataSource = dc14;
            DropDownList2.DataTextField = "filmadi";
            DropDownList2.DataValueField = "Kimlik";
            DropDownList2.DataBind();


            OleDbDataAdapter adap15 = new OleDbDataAdapter("SELECT *FROM salonlar ", baglanti);
            DataSet dc15 = new DataSet();
            adap15.Fill(dc15);
            DropDownList3.DataSource = dc15;
            DropDownList3.DataTextField = "salonadi";
            DropDownList3.DataValueField = "Kimlik";
            DropDownList3.DataBind();

            OleDbDataAdapter adap16 = new OleDbDataAdapter("SELECT *FROM seanssaat ", baglanti);
            DataSet dc16 = new DataSet();
            adap16.Fill(dc16);
            DropDownList1.DataSource = dc16;
            DropDownList1.DataTextField = "seanss";
            DropDownList1.DataValueField = "Kimlik";
            DropDownList1.DataBind();
            baglanti.Close();
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            uyegetir();
            reklamgetir();
            resimgoster();
            sayfagetir();
            filmgetir();
            salongetir();
            kampanyagetir();
            seansgetir();
            kullanicigetir();
            if(!IsPostBack)
            seansbilgigetir();
            
           

            if (Session["giriskontrol"] =="0" || Session["giriskontrol"] ==  null)
            {
                Response.Redirect("admin.aspx");
            }

            List <object> lijst = new List<object>();
            lijst.Add(DateTime.Now.Date.AddDays(-4));
            lijst.Add(DateTime.Now.Date.AddDays(-3));
            lijst.Add(DateTime.Now.Date.AddDays(-2));
            lijst.Add(DateTime.Now.Date.AddDays(-1));
            lijst.Add(DateTime.Now.Date);

            Button4.Attributes.Add("onmouseover", "this.style.backgroundColor='#4B4B4B'");
            Button4.Attributes.Add("onmouseout", "this.style.backgroundColor='#322F2F'");
            Button5.Attributes.Add("onmouseover", "this.style.backgroundColor='#4B4B4B'");
            Button5.Attributes.Add("onmouseout", "this.style.backgroundColor='#322F2F'");
            Button6.Attributes.Add("onmouseover", "this.style.backgroundColor='#4B4B4B'");
            Button6.Attributes.Add("onmouseout", "this.style.backgroundColor='#322F2F'");
            Button7.Attributes.Add("onmouseover", "this.style.backgroundColor='#4B4B4B'");
            Button7.Attributes.Add("onmouseout", "this.style.backgroundColor='#322F2F'");
            Button8.Attributes.Add("onmouseover", "this.style.backgroundColor='#4B4B4B'");
            Button8.Attributes.Add("onmouseout", "this.style.backgroundColor='#322F2F'");
            Button12.Attributes.Add("onmouseover", "this.style.backgroundColor='#F57365'");
            Button12.Attributes.Add("onmouseout", "this.style.backgroundColor='#E73523'");
            Button16.Attributes.Add("onmouseover", "this.style.backgroundColor='#4B4B4B'");
            Button16.Attributes.Add("onmouseout", "this.style.backgroundColor='#322F2F'");
           
            if (!IsPostBack)
            MultiView1.ActiveViewIndex = 3;
            Label3.Text= Application.Get("ziyaretci").ToString();
            try
            {
                baglanti.ConnectionString = "provider=Microsoft.Jet.OleDb.4.0; Data Source=" + Server.MapPath("Srezervasyon.mdb");
                baglanti.Open();
                OleDbCommand komut = new OleDbCommand("SELECT COUNT(*) FROM ziyaretci", baglanti);
                Label4.Text = komut.ExecuteScalar().ToString();
                OleDbCommand komut2 = new OleDbCommand("SELECT COUNT(*) FROM filmler", baglanti);
                Label5.Text = komut2.ExecuteScalar().ToString();
                OleDbCommand komut3 = new OleDbCommand("SELECT COUNT(*) FROM uyeler", baglanti);
                Label6.Text = komut3.ExecuteScalar().ToString();
                OleDbCommand komut4 = new OleDbCommand("SELECT COUNT(*) FROM biletler", baglanti);
                Label8.Text = komut4.ExecuteScalar().ToString();

                baglanti.Close();
            }
            catch
            {
                baglanti.Close();
                Label4.Text = "Veritabanı Bağlantısı Kurulamadı";
            }

            foreach (var series in Chart1.Series)
            {
                series.Points.Clear();
            }
            Chart1.ChartAreas[0].AxisX.LabelStyle.Angle = -70;
            baglanti.ConnectionString = "provider=Microsoft.Jet.OleDb.4.0; Data Source=" + Server.MapPath("Srezervasyon.mdb");
            baglanti.Open();
          
                  OleDbDataAdapter adap = new OleDbDataAdapter("SELECT * FROM ziyaretci WHERE tarih like '" + lijst[4] + "'", baglanti);
                DataSet dc = new DataSet();
                adap.Fill(dc, "ziyaretci");
                Chart1.Series["Tarih"].Points.Add(dc.Tables[0].Rows.Count);

            

            OleDbDataAdapter adap2 = new OleDbDataAdapter("SELECT * FROM ziyaretci WHERE tarih like '" + lijst[3] + "'", baglanti);
            DataSet dc2 = new DataSet();
            adap2.Fill(dc2, "ziyaretci");
            Chart1.Series["Tarih"].Points.Add(dc2.Tables[0].Rows.Count);

            OleDbDataAdapter adap3 = new OleDbDataAdapter("SELECT * FROM ziyaretci WHERE tarih like '" + lijst[2] + "'", baglanti);
            DataSet dc3 = new DataSet();
            adap3.Fill(dc3, "ziyaretci");
            Chart1.Series["Tarih"].Points.Add(dc3.Tables[0].Rows.Count);

            OleDbDataAdapter adap4 = new OleDbDataAdapter("SELECT * FROM ziyaretci WHERE tarih like '" + lijst[1] + "'", baglanti);
            DataSet dc4 = new DataSet();
            adap4.Fill(dc4, "ziyaretci");
            Chart1.Series["Tarih"].Points.Add(dc4.Tables[0].Rows.Count);

            OleDbDataAdapter adap5 = new OleDbDataAdapter("SELECT * FROM ziyaretci WHERE tarih like '" + lijst[0] + "'", baglanti);
            DataSet dc5 = new DataSet();
            adap5.Fill(dc5, "ziyaretci");
            Chart1.Series["Tarih"].Points.Add(dc5.Tables[0].Rows.Count);

           

            baglanti.Close();
             Chart1.Series["Tarih"].Points[0].AxisLabel = lijst[4].ToString();
           Chart1.Series["Tarih"].Points[1].AxisLabel = lijst[3].ToString();
            Chart1.Series["Tarih"].Points[2].AxisLabel = lijst[2].ToString();
            Chart1.Series["Tarih"].Points[3].AxisLabel = lijst[1].ToString();
            Chart1.Series["Tarih"].Points[4].AxisLabel = lijst[0].ToString();
            

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 0;
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 1;
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
           
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 0;
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 1;
        }

        protected void Button8_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 6;
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 4;
        }

        protected void MultiView1_ActiveViewChanged(object sender, EventArgs e)
        {


        }

        protected void Button3_Click(object sender, EventArgs e)
        {if(FileUpload1.HasFile)
            {
                FileUpload1.SaveAs(Server.MapPath("dosyalar\\afisler\\") + FileUpload1.FileName);
                link="/dosyalar/afisler/"+FileUpload1.FileName;
                Image1.ImageUrl = "dosyalar/afisler/" + FileUpload1.FileName;
                baglanti.ConnectionString = "provider=Microsoft.Jet.OleDb.4.0; Data Source=" + Server.MapPath("Srezervasyon.mdb");
            baglanti.Open();
            OleDbCommand cmd = new OleDbCommand();
            cmd.Connection = baglanti;
            cmd.CommandText = "insert into filmler (filmadi,filmturu,filmsure,oyuncular,afislink,yonetmen,vizyontarihi,aciklama) Values ('" + TextBox1.Text + "','" + TextBox7.Text + "','" + TextBox2.Text + "','" + TextBox5.Text + "','" +link + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox6.Text + "')";
            cmd.ExecuteNonQuery();
            baglanti.Close();
                seansbilgigetir();
                texttemizle();
                filmgetir();


                }
            else
            {
                Response.Write("dosya seçin");
            }
           
        }

        protected void Button12_Click(object sender, EventArgs e)
        {
            Session["giriskontrol"] = "0";
            Response.Redirect("admin.aspx");
        }

        protected void Button14_Click(object sender, EventArgs e)
        {
           
        }

        protected void Button9_Click(object sender, EventArgs e)
        {
            try
            {
                baglanti.ConnectionString = "provider=Microsoft.Jet.OleDb.4.0; Data Source=" + Server.MapPath("Srezervasyon.mdb");
                baglanti.Open();
                OleDbCommand cmd = new OleDbCommand();
                cmd.Connection = baglanti;
                cmd.CommandText = "insert into salonlar (salonadi,sira,koltuk) Values ('" + TextBox8.Text + "','" + TextBox16.Text + "','" + TextBox17.Text + "')";
                cmd.ExecuteNonQuery();
                baglanti.Close();
                texttemizle();
                salongetir();
                seansbilgigetir();
            }
            catch
            {
                Response.Write("Bağlantı Hatası Oluştu");
                baglanti.Close();

                }
        }

        protected void Button7_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 2;
        }

        protected void Button14_Click1(object sender, EventArgs e)
        {
            if (FileUpload4.HasFile)
            {
                if(TextBox19.Text=="")
                FileUpload4.SaveAs(Server.MapPath("dosyalar\\slaytresimler\\") + FileUpload4.FileName);
                else
                {
                    FileUpload4.SaveAs(Server.MapPath("dosyalar\\slaytresimler\\") + TextBox19.Text+".jpg") ;
                }
                texttemizle();
            }
            else
            {
                Response.Write("Dosya Seçiniz");
            }
            resimgoster();
            }

        protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            
        }

        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {
            secilenresim = e.Item.ItemIndex;
            Response.Write(secilenresim);
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
           
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            
        }

        protected void Button15_Click(object sender, EventArgs e)
        {
            
           File.Delete(Server.MapPath("dosyalar/slaytresimler/"+TextBox18.Text+".jpg"));
            resimgoster();
        }

        protected void Button16_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 5;
        }

        protected void Button17_Click(object sender, EventArgs e)
        {
            if (TextBox20.Text != "" && editor.Text != "")
            {
                try
                {
                    baglanti.ConnectionString = "provider=Microsoft.Jet.OleDb.4.0; Data Source=" + Server.MapPath("Srezervasyon.mdb");
                    baglanti.Open();
                    OleDbCommand cmd = new OleDbCommand();
                    cmd.Connection = baglanti;
                    cmd.CommandText = "insert into sayfalar (baslik,icerik) Values ('" + TextBox20.Text + "','" + editor.Text + "')";
                    cmd.ExecuteNonQuery();
                    baglanti.Close();
                    
                    TextBox20.Text = "";
                    editor.Text = "";

                    Response.Write("Sayfa Oluşturuldu.");
                    sayfagetir();

                }
                catch
                {
                    baglanti.Close();
                    Response.Write("Sayfa Oluşturulamadı.");

                }
            }
            else
            {
                Response.Write("Eksiksiz Doldurunuz:");

            }
           
        }

        protected void Button18_Click(object sender, EventArgs e)
        {
            
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            baglanti.ConnectionString = "provider=Microsoft.Jet.OleDb.4.0; Data Source=" + Server.MapPath("Srezervasyon.mdb");
            string sayfa = GridView1.DataKeys[e.RowIndex].Values[0].ToString();
            baglanti.Open();
            OleDbCommand com11 = new OleDbCommand("DELETE FROM sayfalar WHERE Kimlik=" + sayfa + "", baglanti);
            com11.ExecuteNonQuery();
            baglanti.Close();
            sayfagetir();

        }

        protected void Button19_Click(object sender, EventArgs e)
        {
            if (TextBox20.Text != "" && editor.Text != "")
            {
                baglanti.ConnectionString = "provider=Microsoft.Jet.OleDb.4.0; Data Source=" + Server.MapPath("Srezervasyon.mdb");
                baglanti.Open();
            }
            else
            {
                Response.Write("Bir Sayfa Seçiniz.");
            }
            Button17.Visible = true;
        }

        protected void GridView1_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
        {
            baglanti.ConnectionString = "provider=Microsoft.Jet.OleDb.4.0; Data Source=" + Server.MapPath("Srezervasyon.mdb");
            string sayfa = GridView1.DataKeys[e.NewSelectedIndex].Values[0].ToString();
            
            baglanti.Open();
            OleDbCommand com11 = new OleDbCommand("select *from sayfalar WHERE Kimlik=@Kimlik", baglanti);
            com11.Parameters.Add("@Kimlik", sayfa);
            OleDbDataReader veri = com11.ExecuteReader();
            while(veri.Read())
            {
                TextBox21.Text = veri["Kimlik"].ToString();
                TextBox20.Text = veri["baslik"].ToString();
                editor.Text = veri["icerik"].ToString();
            }
            baglanti.Close();
            Button17.Visible = false;
           
        }

      

        protected void GridView4_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            baglanti.ConnectionString = "provider=Microsoft.Jet.OleDb.4.0; Data Source=" + Server.MapPath("Srezervasyon.mdb");
            string kampanya = GridView4.DataKeys[e.RowIndex].Values[0].ToString();
            baglanti.Open();
            OleDbCommand com11 = new OleDbCommand("DELETE FROM kampanyalar WHERE Kimlik=" + kampanya + "", baglanti);
            com11.ExecuteNonQuery();
            baglanti.Close();
            kampanyagetir();
        }

        protected void GridView4_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
        {
            baglanti.ConnectionString = "provider=Microsoft.Jet.OleDb.4.0; Data Source=" + Server.MapPath("Srezervasyon.mdb");
            string kampanya = GridView4.DataKeys[e.NewSelectedIndex].Values[0].ToString();

            baglanti.Open();
            OleDbCommand com11 = new OleDbCommand("select *from kampanyalar WHERE Kimlik=@Kimlik", baglanti);
            com11.Parameters.Add("@Kimlik", kampanya);
            OleDbDataReader veri = com11.ExecuteReader();
            while (veri.Read())
            {
                TextBox22.Text = veri["Kimlik"].ToString();
                TextBox12.Text = veri["kampanyabaslik"].ToString();
                TextBox13.Text = veri["kampanyaaciklama"].ToString();
                TextBox14.Text = veri["kbast"].ToString();
                TextBox15.Text = veri["kbitt"].ToString();
            }
            baglanti.Close();
        }

        protected void GridView3_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            baglanti.ConnectionString = "provider=Microsoft.Jet.OleDb.4.0; Data Source=" + Server.MapPath("Srezervasyon.mdb");
            string salon = GridView3.DataKeys[e.RowIndex].Values[0].ToString();
            baglanti.Open();
            OleDbCommand com11 = new OleDbCommand("DELETE FROM salonlar WHERE Kimlik=" + salon + "", baglanti);
            com11.ExecuteNonQuery();
            baglanti.Close();
            salongetir();
        }

        protected void GridView3_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
        {
            baglanti.ConnectionString = "provider=Microsoft.Jet.OleDb.4.0; Data Source=" + Server.MapPath("Srezervasyon.mdb");
            string salon = GridView3.DataKeys[e.NewSelectedIndex].Values[0].ToString();

            baglanti.Open();
            OleDbCommand com11 = new OleDbCommand("select *from salonlar WHERE Kimlik=@Kimlik", baglanti);
            com11.Parameters.Add("@Kimlik", salon);
            OleDbDataReader veri = com11.ExecuteReader();
            while (veri.Read())
            {
                TextBox23.Text = veri["Kimlik"].ToString();
                TextBox8.Text = veri["salonadi"].ToString();
                TextBox16.Text = veri["sira"].ToString();
                TextBox17.Text = veri["koltuk"].ToString();
                
            }
            baglanti.Close();
        }

        protected void Button20_Click(object sender, EventArgs e)
        {
            try
            {
                baglanti.ConnectionString = "provider=Microsoft.Jet.OleDb.4.0; Data Source=" + Server.MapPath("Srezervasyon.mdb");
                baglanti.Open();
                OleDbCommand cmd = new OleDbCommand();
                cmd.Connection = baglanti;
                cmd.CommandText = "insert into seanslar (saat,filmid,salonid) Values ('" + DropDownList1.SelectedItem.ToString() + "','" + DropDownList2.SelectedValue + "','" + DropDownList3.SelectedValue + "')";
                cmd.ExecuteNonQuery();
                baglanti.Close();

                

                Response.Write("Seans Oluşturuldu.");
                seansgetir();

            }
            catch
            {
                baglanti.Close();
                Response.Write("Seans Oluşturulamadı.");

            }
        }

        protected void GridView5_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            baglanti.ConnectionString = "provider=Microsoft.Jet.OleDb.4.0; Data Source=" + Server.MapPath("Srezervasyon.mdb");
            string seans = GridView5.DataKeys[e.RowIndex].Values[0].ToString();
            baglanti.Open();
            OleDbCommand com11 = new OleDbCommand("DELETE FROM seanslar WHERE Kimlik=" + seans + "", baglanti);
            com11.ExecuteNonQuery();
            baglanti.Close();
            seansgetir();
        }

        protected void Button21_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 7;
        }

        protected void Button22_Click(object sender, EventArgs e)
        {
            try
            {
                baglanti.ConnectionString = "provider=Microsoft.Jet.OleDb.4.0; Data Source=" + Server.MapPath("Srezervasyon.mdb");
                baglanti.Open();
                OleDbCommand cmd = new OleDbCommand();
                cmd.Connection = baglanti;
                cmd.CommandText = "insert into adminler (kullaniciadi,sifre) Values ('" +TextBox24.Text + "','" + TextBox25.Text +"')";
                cmd.ExecuteNonQuery();
                baglanti.Close();



                Response.Write("Kullanıcı Oluşturuldu.");
                texttemizle();
                kullanicigetir();

            }
            catch
            {
                baglanti.Close();
                Response.Write("Kullanıcı Oluşturulamadı.");

            }
        }

        protected void GridView6_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            baglanti.ConnectionString = "provider=Microsoft.Jet.OleDb.4.0; Data Source=" + Server.MapPath("Srezervasyon.mdb");
            string admin = GridView6.DataKeys[e.RowIndex].Values[0].ToString();
            baglanti.Open();
            OleDbCommand com12 = new OleDbCommand("DELETE FROM adminler WHERE Kimlik=" + admin + "", baglanti);
            com12.ExecuteNonQuery();
            baglanti.Close();
            kullanicigetir();
        }

        protected void Button23_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 8;
        }

        protected void GridView7_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            baglanti.ConnectionString = "provider=Microsoft.Jet.OleDb.4.0; Data Source=" + Server.MapPath("Srezervasyon.mdb");
            string reklam = GridView7.DataKeys[e.RowIndex].Values[0].ToString();
            baglanti.Open();
            OleDbCommand com30 = new OleDbCommand("DELETE FROM reklamlar WHERE Kimlik=" + reklam + "", baglanti);
            com30.ExecuteNonQuery();
            baglanti.Close();
            reklamgetir();
        }

        protected void Button25_Click(object sender, EventArgs e)
        {
            baglanti.ConnectionString = "provider=Microsoft.Jet.OleDb.4.0; Data Source=" + Server.MapPath("Srezervasyon.mdb");
            baglanti.Open();
            OleDbCommand com30 = new OleDbCommand("DELETE FROM biletler ", baglanti);
            com30.ExecuteNonQuery();
            baglanti.Close();


        }

        protected void Button26_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 9;
        }

        protected void GridView8_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            baglanti.ConnectionString = "provider=Microsoft.Jet.OleDb.4.0; Data Source=" + Server.MapPath("Srezervasyon.mdb");
            string uye = GridView8.DataKeys[e.RowIndex].Values[0].ToString();
            baglanti.Open();
            OleDbCommand com11 = new OleDbCommand("DELETE FROM uyeler WHERE Kimlik=" + uye + "", baglanti);
            com11.ExecuteNonQuery();
            baglanti.Close();
            uyegetir();
        }

        protected void GridView2_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            baglanti.ConnectionString = "provider=Microsoft.Jet.OleDb.4.0; Data Source=" + Server.MapPath("Srezervasyon.mdb");
            string film = GridView2.DataKeys[e.RowIndex].Values[0].ToString();
            baglanti.Open();
            OleDbCommand com11 = new OleDbCommand("DELETE FROM filmler WHERE Kimlik=" +film + "", baglanti);
            com11.ExecuteNonQuery();
            baglanti.Close();
            filmgetir();
        }

        protected void GridView2_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
        {
            baglanti.ConnectionString = "provider=Microsoft.Jet.OleDb.4.0; Data Source=" + Server.MapPath("Srezervasyon.mdb");
            string film = GridView2.DataKeys[e.NewSelectedIndex].Values[0].ToString();

            baglanti.Open();
            OleDbCommand com11 = new OleDbCommand("select *from filmler WHERE Kimlik=@Kimlik", baglanti);
            com11.Parameters.Add("@Kimlik", film);
            OleDbDataReader veri = com11.ExecuteReader();
            while (veri.Read())
            {
                TextBox29.Text = veri["Kimlik"].ToString();
                TextBox1.Text = veri["filmadi"].ToString();
                TextBox7.Text = veri["filmturu"].ToString();
                TextBox2.Text = veri["filmsure"].ToString();
                TextBox5.Text = veri["oyuncular"].ToString();
                Image1.ImageUrl = veri["afislink"].ToString();
                TextBox3.Text = veri["yonetmen"].ToString();
                TextBox4.Text = veri["vizyontarihi"].ToString();
                TextBox6.Text = veri["aciklama"].ToString();

            }
            baglanti.Close();
        }

        protected void Button27_Click(object sender, EventArgs e)
        {
            if (TextBox1.Text != "")
            {
                if (FileUpload1.HasFile)
                {

                    FileUpload1.SaveAs(Server.MapPath("dosyalar\\afisler\\") + FileUpload1.FileName);
                    link = "/dosyalar/afisler/" + FileUpload1.FileName;
                    baglanti.ConnectionString = "provider=Microsoft.Jet.OleDb.4.0; Data Source=" + Server.MapPath("Srezervasyon.mdb");
                    baglanti.Open();
                    OleDbCommand com5 = new OleDbCommand("update filmler set filmadi='" + TextBox1.Text + "',filmturu='" + TextBox7.Text + "',filmsure='" + TextBox2.Text + "',oyuncular='" + TextBox5.Text + "',afislink='" + link + "', yonetmen='" + TextBox3.Text + "',vizyontarihi='" + TextBox4.Text + "',aciklama='" + TextBox6.Text + "' where Kimlik=" + Convert.ToInt32(TextBox29.Text) + "", baglanti);
                    com5.ExecuteNonQuery();
                    baglanti.Close();
                    Response.Write("güncellendi");
                    texttemizle();
                    filmgetir();

                }
                else
                {
                    baglanti.ConnectionString = "provider=Microsoft.Jet.OleDb.4.0; Data Source=" + Server.MapPath("Srezervasyon.mdb");
                    baglanti.Open();
                    OleDbCommand com = new OleDbCommand("update filmler set filmadi='" + TextBox1.Text + "',filmturu='" + TextBox7.Text + "',filmsure='" + TextBox2.Text + "',oyuncular='" + TextBox5.Text + "', yonetmen='" + TextBox3.Text + "',vizyontarihi='" + TextBox4.Text + "',aciklama='" + TextBox6.Text + "' where Kimlik=" + Convert.ToInt32(TextBox29.Text) + "", baglanti);
                    com.ExecuteNonQuery();
                    baglanti.Close();
                    Response.Write("güncellendi");
                    texttemizle();
                    filmgetir();

                }

            }
            else
            {
                Response.Write("Film Adı Zorunludur.");
            }
        }

        protected void Button24_Click(object sender, EventArgs e)
        {
            if (FileUpload5.HasFile)
            {
                try
                {
                    FileUpload5.SaveAs(Server.MapPath("dosyalar\\reklamlar\\") + FileUpload5.FileName);
                    link3 = "dosyalar\\reklamlar\\"+ FileUpload5.FileName;
                    baglanti.ConnectionString = "provider=Microsoft.Jet.OleDb.4.0; Data Source=" + Server.MapPath("Srezervasyon.mdb");
                    baglanti.Open();
                    OleDbCommand cmd = new OleDbCommand();
                    cmd.Connection = baglanti;
                    cmd.CommandText = "insert into reklamlar (reklambaslik,reklamlink,reklamresimlink,reklamaciklama) Values ('" + TextBox26.Text + "','" + TextBox27.Text + "','" + link3 + "','" + TextBox28.Text + "')";
                    cmd.ExecuteNonQuery();
                    baglanti.Close();



                    Response.Write("Reklam Oluşturuldu.");
                    texttemizle();
                    reklamgetir();

                }
                catch
                {
                    baglanti.Close();
                    Response.Write("Reklam Oluşturulamadı.");

                }
            }
            else
            {
                Response.Write("Bir Resim Dosyası Seçiniz");
            }
        }

        protected void Button13_Click(object sender, EventArgs e)
        {
            try
            {
                if (FileUpload3.HasFile)
                {
                    FileUpload3.SaveAs(Server.MapPath("dosyalar\\kampanyalar\\") + FileUpload3.FileName);
                    link2 = FileUpload3.FileName;
                    
                    baglanti.ConnectionString = "provider=Microsoft.Jet.OleDb.4.0; Data Source=" + Server.MapPath("Srezervasyon.mdb");
                    baglanti.Open();
                    OleDbCommand cmd = new OleDbCommand();
                    cmd.Connection = baglanti;
                    cmd.CommandText = "insert into kampanyalar (kampanyabaslik,kampanyaresim,kampanyaaciklama,kbast,kbitt) Values ('" + TextBox12.Text + "','" + link2 + "','" + TextBox13.Text + "','" + TextBox14.Text + "','" + TextBox15.Text + "')";
                    cmd.ExecuteNonQuery();
                    baglanti.Close();
                    texttemizle();
                    kampanyagetir();
                    
                }
                else
                {
                    Response.Write("Dosya Seçin");
                }
            }
            catch { baglanti.Close();
                Response.Write("Veri Tabanı Hatası Verdi Kayıt Yapılamadı Tekrar Deneyiniz!!!!");

            }
        }

        protected void Button11_Click(object sender, EventArgs e)
        {
            if(FileUpload1.HasFile)
              try
                {
                    uzanti = FileUpload1.PostedFile.ContentType.ToString();
                    
                    if (uzanti == "image/jpeg")
                    {
                        

                    Image1.ImageUrl = "dosyalar/afisler/"+FileUpload1.FileName;

                    
                }
                    else
                    {
                        Response.Write(".JPG Uzantılı Dosya Yükleyiniz");
                    }
                }
               catch
               {
                    Response.Write("Hata Oluştu");
                }
            else
            {
                Response.Write("Bir Dosya Seçiniz");
            }

            Response.Write(link);
        }
    }
}