<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="SinemaRezervasyon.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link href="stil.css" rel="stylesheet" />
    <title>Sinema Rezervasyon Sistemi</title>
    <style type="text/css">
        .auto-style1 {
            height: 16px;
        }
        .auto-style2 {
            width: 100%;
        }
        .auto-style10 {
            width: 100%;
        }
        .auto-style25 {
            width: 100%;
        }
        .auto-style26 {
            width: 48px;
        }
        .auto-style27 {
            width: 48px;
            height: 39px;
        }
        .auto-style36 {
            width: 38%;
            float: left;
            height: 396px;
            text-align:center;
            color:#8F8F8F;
            font-weight:bold;
            /*word-wrap: break-word;*/
            text-overflow:ellipsis;
            overflow:hidden;
            
        }
        .auto-style37 {
            width: 100%;
            height: 264px;
        }
        .auto-style38 {
            height: 71px;
            color: #A0A0A0;
        }
        .auto-style39 {
            height: 55px;
        }
        </style>
    <script src="dosyalar/sliderengine/jquery.js"></script>
    <script src="dosyalar/sliderengine/amazingslider.js"></script>
    <link rel="stylesheet" type="text/css" href="dosyalar/sliderengine/amazingslider-0.css">
    <script src="dosyalar/sliderengine/initslider-0.js"></script>
    
</head>
<body>

  
    <form id="form1" runat="server">
    <header>
        <div class="auto-style1">
            &nbsp;<a href="index.aspx"><img src="dosyalar/logo.png" /></a>

        </div>
        <div  style="float:right;color:#8F8888;text-decoration:none;">
            <asp:LinkButton ID="LinkButton3" runat="server" CssClass="linkbuton2" OnClick="LinkButton3_Click1"></asp:LinkButton>
            </div>
        <div style="float:right;width:30px;height:30px;margin-top:-5px;margin-right:14px;">
            <asp:Image ID="Image1" runat="server" Height="30px" Width="30px" CssClass="miniresim" /></div>

    </header>
  
          <div class="Menu">
              
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; <a href="filmler.aspx">Filmler</a>
     
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              <asp:Button ID="Button1" runat="server" Text="ÜYE GİRİŞİ" BackColor="#E13053" BorderStyle="None" Font-Bold="True" ForeColor="White" Height="40px" OnClick="Button1_Click" Width="100px" CssClass="textalan" />
              <asp:Button ID="Button2" runat="server" BackColor="#E13053" BorderStyle="None" Font-Bold="True" Font-Size="15px" ForeColor="White" Height="40px" OnClick="Button2_Click1" Text="ÜYE ÇIKIŞ" Width="100px" CssClass="textalan" />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              <asp:Button ID="Button3" runat="server" Text="REZERVASYON YAP" BackColor="#49BFD2" BorderStyle="None" Font-Bold="True" ForeColor="White" Height="40px" OnClick="Button3_Click" Width="197px" Font-Size="20px" CssClass="textalan" />
    </div>
        <div class="film_slayt">
              <div id="amazingslider-wrapper-0" style="display:block;position:relative;max-width:1200px;margin:auto;">
        <div id="amazingslider-0" style="display:block;position:relative;margin:0 auto;">
            <ul class="amazingslider-slides" style="display:none;">
                <%Response.Write(link); %>
            </ul>
            <ul class="amazingslider-thumbnails" style="display:none;">
                <%Response.Write(link); %>
            </ul>
        </div>
    </div>
            
           
       
            
                
             
            
            
        </div>
       
        <div class="kampanya_reklam" style="text-align: center">
           
            <div class="auto-style36">
               
             <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
           
                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                    <ContentTemplate>
                        <br />
                        <asp:Panel ID="Panel1" runat="server">
                            
                        </asp:Panel>
                        <br />
                        <asp:LinkButton ID="LinkButton1" runat="server" CssClass="linkbuton">LinkButton</asp:LinkButton>
                        <br />
                        <asp:Timer ID="Timer1" runat="server" Interval="10000" OnTick="Timer1_Tick1">
                        </asp:Timer>
                        <asp:Literal ID="Literal3" runat="server"></asp:Literal>
                    </ContentTemplate>
                </asp:UpdatePanel>
               
            </div>
            
            <div style="height:400px; width:300px;margin:auto; float:left;">
            <asp:Literal ID="Literal1" runat="server"></asp:Literal>
                </div>
            <div  style="float:right;height:auto; width:35%;text-align:center;color:#8F8F8F; font-weight:bold;">

                <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                    <ContentTemplate>
                        <br />
                        <asp:Panel ID="Panel2" runat="server">
                        </asp:Panel>
                        <br />
                        <asp:LinkButton ID="LinkButton2" runat="server" CssClass="linkbuton">LinkButton</asp:LinkButton>
                        <br />
                        <asp:Literal ID="Literal4" runat="server"></asp:Literal>
                    </ContentTemplate>
                </asp:UpdatePanel>

            </div>

        </div>
      
        
        
        
        <div class="iletisim">
           <div class="hakkında">
               <asp:Panel ID="Panel3" runat="server">
               </asp:Panel>
            </div>
           <div class="iletisim_bilgi">
               <table class="auto-style37">
                   <tr>
                       <td class="auto-style38"></td>
                       <td class="auto-style38">Dilek Ve Şikayet</td>
                       <td class="auto-style38"></td>
                   </tr>
                   <tr>
                       <td class="auto-style39" colspan="3">
                           <asp:TextBox ID="TextBox1" runat="server" BorderStyle="None" CssClass="textalan" Height="93px" TextMode="MultiLine" Width="449px"></asp:TextBox>
                       </td>
                   </tr>
                   <tr>
                       <td>&nbsp;</td>
                       <td>
                           <asp:Button ID="Button4" runat="server" BackColor="#CCCCCC" BorderStyle="None" CssClass="textalan" Height="34px" Text="Gönder" Width="177px" />
                       </td>
                       <td>&nbsp;</td>
                   </tr>
                   <tr>
                       <td>&nbsp;</td>
                       <td>&nbsp;</td>
                       <td>&nbsp;</td>
                   </tr>
               </table>
            </div>
           <div class="alt_bilgi">Tüm Hakları Saklıdır @2017 By Onur Rahmi ÖZDEMİR
       </div>
    </form>
</body>
</html>
