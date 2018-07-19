using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.SessionState;
using System.Data.OleDb;
using System.Data;
using System.Text;


namespace SinemaRezervasyon
{
    public class Global : System.Web.HttpApplication
    {
        OleDbConnection baglanti = new OleDbConnection();
        OleDbCommand komut = new OleDbCommand();
        OleDbDataAdapter adr = new OleDbDataAdapter();
        DataSet dts = new DataSet();
        string ip;
        string tarih = DateTime.Now.Date.ToString();
        protected void Application_Start(object sender, EventArgs e)
        {
            Application["ziyaretci"] = 0;
        }

        protected void Session_Start(object sender, EventArgs e)
        {
            try
            {
                baglanti.ConnectionString = "provider=Microsoft.Jet.OleDb.4.0; Data Source=" + Server.MapPath("Srezervasyon.mdb");
                ip = Request.ServerVariables["REMOTE_ADDR"];
                baglanti.Open();
                OleDbCommand komutsorgu = new OleDbCommand("SELECT * From ziyaretci WHERE ip='" + ip + "' and tarih='" + tarih + "'", baglanti);
                OleDbDataReader okusorgu = komutsorgu.ExecuteReader();


                if (okusorgu.Read())
                {

                    baglanti.Close();


                }
                else
                {
                    komut.Connection = baglanti;

                    komut.Connection = baglanti;
                    komut.CommandText = "Insert into ziyaretci(ip,tarih) Values (@ip,tarih)";
                    komut.Parameters.AddWithValue("@ip", ip.ToString());
                    komut.Parameters.AddWithValue("tarih", tarih.ToString());

                    komut.ExecuteNonQuery();
                    komut.Dispose();
                    dts.Clear();
                    baglanti.Close();

                }
            }
            catch
            {

            }


            Application.Lock();
            Application["ziyaretci"] = (int)Application["ziyaretci"] + 1;
            Application.UnLock();
        }

        private void NewMethod(object REMOTE_ADDR)
        {
           
        }

        protected void Application_BeginRequest(object sender, EventArgs e)
        {

        }

        protected void Application_AuthenticateRequest(object sender, EventArgs e)
        {

        }

        protected void Application_Error(object sender, EventArgs e)
        {

        }

        protected void Session_End(object sender, EventArgs e)
        {
            Application.Lock();
            Application["ziyaretci"] = (int)Application["ziyaretci"] - 1;
            Application.UnLock();
        }

        protected void Application_End(object sender, EventArgs e)
        {
            Application.Remove("ziyaretci");
        }
    }
}