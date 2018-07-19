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
    public partial class rezervasyon : System.Web.UI.Page
    {

        
        
        string secilenkoltuk,tarih;

        protected void koltuk_sec(object sender, EventArgs e)
        {
            List<string> secilenkoltuk = Session["secilenkoltuk"] as List<string> ?? new List<string>();
            ImageButton btn = (ImageButton)sender;
            secilenkoltuk.Add(btn.ID.ToString());
            Session["secilenkoltuk"] = secilenkoltuk;
            ListItem s = ListBox1.Items.FindByText(btn.ID.ToString());
            //if (btn.BackColor != System.Drawing.Color.Blue)
            if (s==null)
            {
                btn.BackColor = System.Drawing.Color.Blue;
                ListBox1.Items.Add(btn.ID);
            }
            else
            {
                btn.BackColor = System.Drawing.Color.Transparent;
                ListBox1.Items.Remove(btn.ID);
            }
           
            
            
           
            
        }




        OleDbConnection baglanti = new OleDbConnection();
        public void olustur()
        {
            Panel1.Controls.Clear();
            for (int i = 1; i <= Convert.ToInt32(Session["koltuksayisi"]); i++)
            {

                ImageButton bt = new ImageButton();
                
                
                bt.ID = i.ToString();

                bt.Width = 70;
                bt.Height = 50;

                baglanti.ConnectionString = "provider=Microsoft.Jet.OleDb.4.0; Data Source=" + Server.MapPath("Srezervasyon.mdb");


                

                baglanti.Open();
                string ss = Session["secilenseansid"].ToString();
                OleDbCommand komutsorgu2 = new OleDbCommand("SELECT * From biletler WHERE seansid="+ss+ " and koltukno='" +i.ToString()+"'", baglanti);
                OleDbDataReader okusorgu2 = komutsorgu2.ExecuteReader();
                if (okusorgu2.Read())
                {
                    bt.ImageUrl = "/dosyalar/koltuk/kapali.png";
                    bt.Enabled = false;
                }

                 
                
                else
                {
                    bt.ImageUrl = "/dosyalar/koltuk/acik.png";
                    bt.Enabled = true;
                   

                

                }
                baglanti.Close();
                bt.AlternateText = "Koltuk: " + i.ToString();
                //bt.BackColor = System.Drawing.Color.Transparent;
                Label lb = new Label();
                bt.Click += new ImageClickEventHandler(koltuk_sec);
                lb.Text =  bt.ID;
                bt.CssClass = "btn";
                Panel1.Controls.Add(bt);
                Panel1.Controls.Add(lb);

                Literal lt = new Literal();
                lt.Text = "&nbsp;&nbsp;&nbsp";
                if (i % Convert.ToInt32(Session["sirakoltuksayisi"]) == 0) lt.Text = "<br><br>";
                Panel1.Controls.Add(lt);
            }
            
        }
        protected void Page_Load(object sender, EventArgs e)
        {
 
           
            tarih = DateTime.Today.Date.ToString("dd.MM.yyyy");

            
            

            //    if (Session["uysgiris"] != "1")
            //    {
            //        Response.Redirect("uye.aspx");
            //    }

            olustur();

            if (!IsPostBack)
            {
                
                MultiView1.ActiveViewIndex = 0;

                baglanti.ConnectionString = "provider=Microsoft.Jet.OleDb.4.0; Data Source=" + Server.MapPath("Srezervasyon.mdb");


                OleDbDataAdapter da = new OleDbDataAdapter("Select * from filmler ", baglanti);
                DataSet ds = new DataSet();
                baglanti.Open();
                da.Fill(ds);
                DataList1.DataSource = ds;
                DataList1.DataBind();


                baglanti.Close();
                baglanti.ConnectionString = "provider=Microsoft.Jet.OleDb.4.0; Data Source=" + Server.MapPath("Srezervasyon.mdb");


                OleDbDataAdapter da2 = new OleDbDataAdapter("Select * from filmler ", baglanti);
                DataTable dt = new DataTable();
                baglanti.Open();
                da2.Fill(dt);
                DropDownList1.DataSource = dt;
                DropDownList1.DataTextField = "filmadi";
                DropDownList1.DataValueField = "Kimlik";
                DropDownList1.DataBind();
                baglanti.Close();
            }
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Session["secilenfilmid"] = DropDownList1.SelectedValue;
            MultiView1.ActiveViewIndex = 1;
            baglanti.ConnectionString = "provider=Microsoft.Jet.OleDb.4.0; Data Source=" + Server.MapPath("Srezervasyon.mdb");


            OleDbDataAdapter da2 = new OleDbDataAdapter("Select * from seanslar  where  filmid="+ Session["secilenfilmid"], baglanti);
            DataSet ds2 = new DataSet();
            baglanti.Open();
            da2.Fill(ds2);
            DropDownList2.DataSource = ds2;
            DropDownList2.DataTextField = "saat";
            DropDownList2.DataValueField = "Kimlik";
            
            DropDownList2.DataBind();
            DataList2.DataSource = ds2;
          DataList2.DataBind();
            baglanti.Close();

        }

        protected void MultiView1_ActiveViewChanged(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Session["secilenseansid"] = DropDownList2.SelectedValue;
            baglanti.ConnectionString = "provider=Microsoft.Jet.OleDb.4.0; Data Source=" + Server.MapPath("Srezervasyon.mdb");


            OleDbDataAdapter da2 = new OleDbDataAdapter("Select * from seanslar  where  Kimlik=" + Session["secilenseansid"], baglanti);
            DataSet ds2 = new DataSet();
            baglanti.Open();
            da2.Fill(ds2);
           Session["salonid"] = ds2.Tables[0].Rows[0]["salonid"].ToString();

            OleDbDataAdapter da3 = new OleDbDataAdapter("Select * from salonlar  where  Kimlik=" + Session["salonid"], baglanti);
            DataSet ds3 = new DataSet();
            
            da3.Fill(ds3);

            OleDbDataAdapter da6 = new OleDbDataAdapter("Select * from seanslar  where  Kimlik=" + Session["secilenseansid"], baglanti);
            DataSet ds6 = new DataSet();

            da6.Fill(ds6);

            Session["koltuksayisi"] = Convert.ToInt32(ds3.Tables[0].Rows[0]["sira"])* Convert.ToInt32( ds3.Tables[0].Rows[0]["koltuk"]);
            Label1.Text = ds3.Tables[0].Rows[0]["salonadi"].ToString();
            Label4.Text = ds6.Tables[0].Rows[0]["saat"].ToString();
           Session["sirakoltuksayisi"] = Convert.ToInt32( ds3.Tables[0].Rows[0]["koltuk"]);
            baglanti.Close();
            olustur();
            
            MultiView1.ActiveViewIndex = 2;
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 0;
            ListBox1.Items.Clear();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            if(ListBox1.Items.Count>0)
            {
                try
              {
                    for (int s = 0; s < ListBox1.Items.Count; s++)
                    {
                        baglanti.ConnectionString = "provider=Microsoft.Jet.OleDb.4.0; Data Source=" + Server.MapPath("Srezervasyon.mdb");
                        baglanti.Open();
                        OleDbCommand cmd1 = new OleDbCommand();
                        cmd1.Connection = baglanti;
                        cmd1.CommandText = "insert into biletler (seansid,uyeid,koltukno,tarih) Values ('" + Convert.ToInt32(Session["secilenseansid"]) + "','" + Convert.ToInt32(Session["uyeid"]) + "','" + ListBox1.Items[s].ToString() + "','" + tarih + "')";

                        cmd1.ExecuteNonQuery();
                        baglanti.Close();
                    }
                    ListBox1.Items.Clear();
                   Response.Redirect("profil.aspx");

            }
            catch
            {
                Response.Write("Bağlantı Hatası!!");
                baglanti.Close();
            }
        }
            else
            {

                Response.Write("Bir Koltuk Seçiniz");


            }
            
}

        protected void Button5_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 1;
            ListBox1.Items.Clear();
        }
    }
}