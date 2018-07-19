<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="adminPanel.aspx.cs" Inherits="SinemaRezervasyon.adminPanel" %>

<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>
<%@ Register Assembly="CKEditor.NET" Namespace="CKEditor.NET" TagPrefix="CKEditor" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link href="stil.css" rel="stylesheet" />
    <title>Admin Kontrol Paneli</title>
 
    </script>
    <style type="text/css">
        .auto-style27 {
            width: 100%;
        }
        .auto-style30 {
            height: 1px;
        }
        .auto-style31 {
            float: left;
            width: 751px;
            height: 373px;
        }
        .auto-style34 {
            height: 30px;
           
        }
         .auto-style000 {
            height: 30px;
            background-color:white;
            text-align:center;
        }
        .auto-style35 {
            width: 100%;
            height: 209px;
        }
        .auto-style38 {
            width: 100px;
            height: 184px;
        }
        .auto-style52 {
            width: 211px;
            height: 184px;
        }
        .auto-style61 {
            width: 100%;
            height: 209px;
            background-color: #D4EEF5;
            margin-top:20px;
            border-radius:5px;
            color:#C1BCBE;
        }
        .auto-style63 {
            width: 100px;
            height: 42px;
        }
        .auto-style64 {
            height: 42px;
            width: 211px;
        }
        .auto-style65 {
            height: 42px;
        }
        .auto-style67 {
            width: 100px;
            height: 57px;
        }
        .auto-style68 {
            height: 57px;
            width: 211px;
        }
        .auto-style69 {
            height: 57px;
        }
        .auto-style71 {
            width: 100px;
            height: 50px;
        }
        .auto-style72 {
            height: 50px;
            width: 211px;
        }
        .auto-style73 {
            height: 50px;
        }
        .auto-style74 {
            height: 184px;
        }
        .auto-style76 {
            width: 100px;
            height: 68px;
        }
        .auto-style78 {
            height: 68px;
        }
        .auto-style79 {
            width: 100%;
            background-color: #D4EEF5;
            margin-top:20px;
            border-radius:5px;
        }
        .auto-style81 {
            height: 42px;
            width: 48px;
        }
        .auto-style82 {
            height: 57px;
            width: 48px;
        }
        .auto-style83 {
            height: 50px;
            width: 48px;
        }
        .auto-style84 {
            height: 184px;
            width: 48px;
        }
        .auto-style85 {
            height: 68px;
            width: 48px;
        }
        .auto-style87 {
            width: 137px;
            height: 42px;
        }
        .auto-style88 {
            width: 137px;
            height: 57px;
        }
        .auto-style89 {
            width: 137px;
            height: 50px;
        }
        .auto-style90 {
            width: 137px;
            height: 184px;
        }
        .auto-style92 {
            height: 6px;
            width: 48px;
        }
        .auto-style93 {
            width: 100px;
            height: 6px;
        }
        .auto-style94 {
            height: 6px;
            width: 211px;
        }
        .auto-style95 {
            width: 137px;
            height: 6px;
        }
        .auto-style96 {
            height: 6px;
        }
        .auto-style102 {
            height: 67px;
            width: 48px;
        }
        .auto-style103 {
            width: 100px;
            height: 67px;
        }
        .auto-style104 {
            height: 67px;
            width: 211px;
        }
        .auto-style105 {
            width: 137px;
            height: 67px;
        }
        .auto-style106 {
            height: 67px;
        }
        .auto-style108 {
            height: 29px;
        }
        .auto-style112 {
            height: 17px;
        }
        .auto-style113 {
            height: 17px;
            width: 159px;
        }
        .auto-style114 {
            height: 29px;
            width: 159px;
        }
        .auto-style117 {
            width: 159px;
            height: 28px;
        }
        .auto-style118 {
            height: 28px;
        }
        .auto-style120 {
            width: 159px;
            height: 33px;
        }
        .auto-style121 {
            height: 33px;
        }
        .auto-style122 {
            height: 17px;
            width: 167px;
        }
        .auto-style123 {
            height: 29px;
            width: 167px;
        }
        .auto-style124 {
            height: 28px;
            width: 167px;
        }
        .auto-style125 {
            height: 33px;
            width: 167px;
        }
        .auto-style130 {
            height: 27px;
        }
        .auto-style137 {
            height: 30px;
            width: 167px;
        }
        .auto-style0{
            width: 100%;
            background-color: #D4EEF5;

        }
        .auto-style144 {
            height: 50px;
            width: 103px;
        }
        .auto-style148 {
            height: 50px;
            width: 367px;
        }
        .auto-style151 {
            height: 105px;
            width: 103px;
        }
        .auto-style152 {
            height: 105px;
            width: 367px;
        }
        .auto-style153 {
            height: 105px;
            width: 242px;
        }
        .auto-style161 {
            height: 24px;
            width: 242px;
        }
        .auto-style166 {
            height: 92px;
            width: 242px;
        }
        .auto-style168 {
            width: 141px;
        }
        .auto-style169 {
            height: 50px;
            width: 141px;
        }
        .auto-style170 {
            height: 105px;
            width: 141px;
        }
        .auto-style171 {
            height: 24px;
            width: 141px;
        }
        .auto-style172 {
            height: 92px;
            width: 141px;
        }
        .auto-style190 {
            width: 181px;
            height: 48px;
        }
        .auto-style191 {
            width: 191px;
            height: 48px;
        }
        .auto-style198 {
            width: 52px;
            height: 48px;
        }
        .auto-style201 {
            width: 195px;
            height: 48px;
        }
        .auto-style202 {
            width: 52px;
            height: 56px;
        }
        .auto-style203 {
            width: 195px;
            height: 56px;
        }
        .auto-style204 {
            width: 181px;
            height: 56px;
        }
        .auto-style205 {
            width: 191px;
            height: 56px;
        }
        .auto-style206 {
            width: 52px;
            height: 51px;
        }
        .auto-style207 {
            width: 195px;
            height: 51px;
        }
        .auto-style208 {
            width: 181px;
            height: 51px;
        }
        .auto-style209 {
            width: 191px;
            height: 51px;
        }
        .auto-style210 {
            width: 64px;
            height: 64px;
        }
        .auto-style211 {
            height: 48px;
        }
        .auto-style212 {
            width: 100%;
            height: 703px;
            background-color: #D4EEF5;
            margin-top: 20px;
            border-radius: 5px;
            color: #C1BCBE;
        }
        .auto-style215 {
            width: 82px;
        }
        .auto-style217 {
            width: 167px;
        }
        .auto-style218 {
            width: 82px;
            height: 47px;
        }
        .auto-style219 {
            height: 47px;
            width: 167px;
        }
        .auto-style220 {
            height: 47px;
        }
        .auto-style221 {
            width: 82px;
            height: 58px;
        }
        .auto-style222 {
            height: 58px;
            width: 167px;
        }
        .auto-style223 {
            height: 58px;
        }
        .auto-style224 {
            width: 82px;
            height: 53px;
        }
        .auto-style225 {
            height: 53px;
            width: 167px;
        }
        .auto-style226 {
            height: 53px;
        }
        .auto-style227 {
            width: 82px;
            height: 70px;
        }
        .auto-style228 {
            height: 70px;
            width: 167px;
        }
        .auto-style229 {
            height: 70px;
        }
        .auto-style230 {
            width: 171px;
        }
        .auto-style231 {
            height: 47px;
            width: 171px;
        }
        .auto-style233 {
            height: 53px;
            width: 171px;
        }
        .auto-style234 {
            height: 70px;
            width: 171px;
        }
        .auto-style238 {
            width: 82px;
            height: 16px;
        }
        .auto-style240 {
            height: 16px;
            width: 171px;
        }
        .auto-style241 {
            height: 16px;
            width: 167px;
        }
        .auto-style242 {
            height: 16px;
        }
        .auto-style252 {
            height: 17px;
            width: 35px;
        }
        .auto-style253 {
            height: 29px;
            width: 35px;
        }
        .auto-style254 {
            height: 28px;
            width: 35px;
        }
        .auto-style255 {
            height: 33px;
            width: 35px;
        }
        .auto-style256 {
            height: 27px;
            width: 35px;
        }
        .auto-style257 {
            height: 30px;
            width: 35px;
        }
        .auto-style258 {
            height: 17px;
            width: 241px;
        }
        .auto-style259 {
            height: 29px;
            width: 241px;
        }
        .auto-style260 {
            height: 28px;
            width: 241px;
        }
        .auto-style261 {
            height: 33px;
            width: 241px;
        }
        .auto-style262 {
            height: 27px;
            width: 241px;
        }
        .auto-style263 {
            height: 30px;
            width: 241px;
        }
        .auto-style264 {
            height: 17px;
            width: 106px;
        }
        .auto-style265 {
            height: 29px;
            width: 106px;
        }
        .auto-style266 {
            width: 106px;
            height: 28px;
        }
        .auto-style267 {
            width: 106px;
            height: 33px;
        }
        .auto-style268 {
            width: 106px;
            height: 27px;
        }
        .auto-style269 {
            width: 106px;
            height: 30px;
        }
        .auto-style270 {
            width: 159px;
            height: 30px;
        }
        .auto-style271 {
            height: 21px;
        }
        .auto-style272 {
            height: 51px;
            width: 103px;
        }
        .auto-style273 {
            height: 51px;
            width: 367px;
        }
        .auto-style275 {
            height: 51px;
            width: 141px;
        }
        .auto-style278 {
            height: 50px;
            width: 242px;
        }
        .auto-style283 {
            width: 242px;
        }
        .auto-style284 {
            height: 51px;
            width: 242px;
        }
        .auto-style285 {
            width: 217px;
        }
        .auto-style286 {
            height: 51px;
            width: 217px;
        }
        .auto-style287 {
            height: 50px;
            width: 217px;
        }
        .auto-style288 {
            height: 56px;
            width: 242px;
        }
        .auto-style289 {
            height: 56px;
            width: 103px;
        }
        .auto-style290 {
            height: 56px;
            width: 367px;
        }
        .auto-style291 {
            height: 56px;
            width: 217px;
        }
        .auto-style292 {
            height: 56px;
            width: 141px;
        }
        .auto-style295 {
            height: 73px;
        }
        .auto-style296 {
            height: 19px;
        }
        .auto-style297 {
            width: 106px;
            height: 68px;
        }
        .auto-style298 {
            width: 159px;
            height: 68px;
        }
        .auto-style300 {
            height: 68px;
            width: 241px;
        }
        .auto-style301 {
            height: 68px;
            width: 35px;
        }
        .auto-style302 {
            height: 68px;
            width: 167px;
        }
        .auto-style305 {
            height: 58px;
            width: 171px;
        }
        .auto-style306 {
            width: 82px;
            height: 64px;
        }
        .auto-style307 {
            height: 64px;
            width: 167px;
        }
        .auto-style308 {
            height: 64px;
            width: 171px;
        }
        .auto-style309 {
            height: 64px;
        }
        .auto-style310 {
            width: 95px;
        }
        .auto-style311 {
            width: 95px;
            height: 57px;
        }
        .auto-style312 {
            width: 95px;
            height: 62px;
        }
        .auto-style313 {
            height: 62px;
        }
        .auto-style314 {
            height: 57px;
            width: 355px;
        }
        .auto-style315 {
            height: 62px;
            width: 355px;
        }
        .auto-style316 {
            width: 355px;
        }
        .auto-style317 {
            height: 57px;
            width: 124px;
        }
        .auto-style318 {
            height: 62px;
            width: 124px;
        }
        .auto-style319 {
            width: 124px;
        }
        .auto-style320 {
            width: 158px;
        }
        .auto-style321 {
            width: 340px;
        }
        .auto-style322 {
            width: 158px;
            height: 44px;
        }
        .auto-style323 {
            width: 340px;
            height: 44px;
        }
        .auto-style324 {
            height: 44px;
        }
        .auto-style329 {
            border-radius: 4px;
            margin-bottom: 24;
        }
        .auto-style331 {
            width: 158px;
            height: 92px;
        }
        .auto-style332 {
            width: 340px;
            height: 92px;
        }
        .auto-style334 {
            height: 92px;
        }
        .auto-stylemenu{

            background-color:#322F2F;
        }
        .auto-style337 {
            width: 96px;
            height: 121px;
        }
        .auto-style338 {
            width: 245px;
            height: 121px;
        }
        .auto-style339 {
            width: 96px;
            height: 50px;
        }
        .auto-style340 {
            width: 245px;
            height: 50px;
        }
        .auto-style341 {
            width: 96px;
            height: 55px;
        }
        .auto-style342 {
            width: 245px;
            height: 55px;
        }
        .auto-style343 {
            height: 55px;
        }
        .auto-style344 {
            width: 96px;
            height: 63px;
        }
        .auto-style345 {
            width: 245px;
            height: 63px;
        }
        .auto-style346 {
            height: 63px;
        }
        .auto-style347 {
            height: 121px;
        }
        .auto-style348 {
            width: 96px;
            height: 57px;
        }
        .auto-style350 {
            height: 39px;
        }
        .auto-style351 {
            width: 28px;
        }
    </style>
</head>
    
<body>
    <form id="form1" runat="server" class="auto-style30" >
    <header class="header_admin">
       <div class="auto-style1">
            &nbsp;<a href="index.aspx"><img src="dosyalar/logo.png" /></a>

        </div>
        </header>
        <div class="sol_menu">
           
            


            

         
            


            <table class="auto-stylemenu">
                <tr>
                    <td class="auto-style65">
                        <asp:Button ID="Button4"  runat="server" BackColor="#322F2F" BorderStyle="None" Font-Bold="True" Font-Size="15px" ForeColor="#6C6A6A" Height="40px" OnClick="Button4_Click" Text="Film İşlemleri" Width="195px" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="Button5"  runat="server" BackColor="#322F2F" BorderStyle="None" Font-Bold="True" Font-Size="15px" ForeColor="#6C6A6A" Height="40px" OnClick="Button5_Click" Text="Salon İşlemleri" Width="195px" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="Button6"  runat="server" BackColor="#322F2F" BorderStyle="None" Font-Bold="True" Font-Size="15px" ForeColor="#6C6A6A" Height="40px" OnClick="Button6_Click" Text="Kampanya İşlemleri" Width="195px" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="Button7" runat="server" BackColor="#322F2F" BorderStyle="None" Font-Bold="True" Font-Size="15px" ForeColor="#6C6A6A" Height="40px" Text="Slider Resim" Width="195px" OnClick="Button7_Click" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="Button8" runat="server" BackColor="#322F2F" BorderStyle="None" Font-Bold="True" Font-Size="15px" ForeColor="#6C6A6A" Height="40px" Text="Seans İşlemleri" Width="195px" OnClick="Button8_Click" />
                    </td>
                    
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="Button16" runat="server" BackColor="#322F2F" BorderStyle="None" Font-Bold="True" Font-Size="15px" ForeColor="#6C6A6A" Height="40px" Text="Sayfa İşlemleri" Width="195px" OnClick="Button16_Click" />
                    </td>
                    
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="Button21" runat="server" BackColor="#322F2F" BorderStyle="None" Font-Bold="True" Font-Size="15px" ForeColor="#6C6A6A" Height="40px" Text="Kullanıcı İşlemleri" Width="195px" OnClick="Button21_Click" />
                    </td>
                    
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="Button23" runat="server" BackColor="#322F2F" BorderStyle="None" Font-Bold="True" Font-Size="15px" ForeColor="#6C6A6A" Height="40px" Text="Reklam İşlemleri" Width="195px" OnClick="Button23_Click" />
                    </td>
                    
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="Button26" runat="server" BackColor="#322F2F" BorderStyle="None" Font-Bold="True" Font-Size="15px" ForeColor="#6C6A6A" Height="40px" Text="Üye İşlemleri" Width="195px" OnClick="Button26_Click" />
                    </td>
                    
                </tr>
                <tr>
                    <td>
                        &nbsp;</td>
                    
                </tr>
                <tr>
                    <td>
                    <asp:Button ID="Button12" runat="server" BackColor="#E73523" BorderStyle="None" ForeColor="White" Height="40px" Text="ÇIKIŞ" Width="195px" Font-Bold="True" Font-Size="15px" OnClick="Button12_Click" />
                    </td>
                    
                </tr>
            </table>
           
            


            

         
            


        </div>
        
        <div  class="auto-style31">
            <asp:MultiView ID="MultiView1" runat="server" OnActiveViewChanged="MultiView1_ActiveViewChanged">
                <asp:View ID="View1" runat="server">
                    <table class="auto-style61">
                        <tr>
                            <td class="auto-style92"></td>
                            <td class="auto-style93"></td>
                            <td class="auto-style94"></td>
                            <td class="auto-style95"></td>
                            <td class="auto-style96"></td>
                        </tr>
                        <tr>
                            <td class="auto-style81"></td>
                            <td class="auto-style63">Film Adı:</td>
                            <td class="auto-style64">
                                <asp:TextBox ID="TextBox1" runat="server" Width="180px" Height="28px" BorderStyle="None" CssClass="textalan"></asp:TextBox>
                            </td>
                            <td class="auto-style87">
                                <asp:TextBox ID="TextBox29" runat="server" BorderStyle="None" Enabled="False" Width="34px"></asp:TextBox>
                            </td>
                            <td class="auto-style65">&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style102"></td>
                            <td class="auto-style103">Film Türü:</td>
                            <td class="auto-style104">
                                <asp:TextBox ID="TextBox7" runat="server" Height="28px" Width="180px" BorderStyle="None" CssClass="textalan"></asp:TextBox>
                                <br />
                                <asp:Label ID="Label1" runat="server" BorderStyle="None" Font-Size="10px" ForeColor="#CC0000" Text="*Her türden sonra ',' koyunuz!"></asp:Label>
                            </td>
                            <td class="auto-style105">Yönetmen:</td>
                            <td class="auto-style106">
                                <asp:TextBox ID="TextBox3" runat="server" Height="28px" Width="185px" BorderStyle="None" CssClass="textalan"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style82">&nbsp;</td>
                            <td class="auto-style67">Filmin Süresi:</td>
                            <td class="auto-style68">
                                <asp:TextBox ID="TextBox2" runat="server" Height="28px" Width="180px" BorderStyle="None" CssClass="textalan"></asp:TextBox>
                            </td>
                            <td class="auto-style88">Vizyon Tarihi:</td>
                            <td class="auto-style69">
                                <asp:TextBox ID="TextBox4" runat="server" Height="28px" Width="185px" BorderStyle="None" CssClass="textalan"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style82">&nbsp;</td>
                            <td class="auto-style67">Oyuncular:</td>
                            <td class="auto-style68">
                                <asp:TextBox ID="TextBox5" runat="server" Height="28px" Width="180px" BorderStyle="None" CssClass="textalan"></asp:TextBox>
                                <br />
                                <asp:Label ID="Label2" runat="server" BorderStyle="None" Font-Size="10px" ForeColor="#CC0000" Text="*Her Oyuncudan sonra ',' koyunuz!"></asp:Label>
                            </td>
                            <td class="auto-style88">&nbsp;</td>
                            <td class="auto-style69">&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style83"></td>
                            <td class="auto-style71">Afiş:</td>
                            <td class="auto-style72">
                                <asp:FileUpload ID="FileUpload1" runat="server" Width="180px" />
                            </td>
                            <td class="auto-style89">
                                &nbsp;</td>
                            <td class="auto-style73">&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style84"></td>
                            <td class="auto-style38">Önizleme:</td>
                            <td class="auto-style52">
                                <asp:Image ID="Image1" runat="server" Height="161px" Width="139px" />
                            </td>
                            <td class="auto-style90">Açıklama:</td>
                            <td class="auto-style74">
                                <asp:TextBox ID="TextBox6" runat="server" Height="135px" Width="229px" TextMode="MultiLine" BorderStyle="None" CssClass="textalan"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style85"></td>
                            <td class="auto-style76"></td>
                            <td class="auto-style78" colspan="3">
                                <asp:Button ID="Button3" runat="server" BackColor="#495EF2" BorderStyle="None" ForeColor="White" Height="49px" Text="Kaydet" Width="203px" OnClick="Button3_Click" CssClass="textalan" />
                                &nbsp;
                                <asp:Button ID="Button27" runat="server" BackColor="#495EF2" BorderStyle="None" CssClass="textalan" ForeColor="White" Height="40px" OnClick="Button27_Click" Text="Düzenle" Width="150px" />
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style78" colspan="5">
                                <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical" Width="741px" DataKeyNames="Kimlik" OnRowDeleting="GridView2_RowDeleting" OnSelectedIndexChanging="GridView2_SelectedIndexChanging">
                                    <AlternatingRowStyle BackColor="White" />
                                    <Columns>
                                        <asp:CommandField HeaderText="SEÇ" ShowSelectButton="True" />
                                        <asp:BoundField DataField="filmadi" HeaderText="FİLM ADI" />
                                        <asp:CommandField HeaderText="SİL" ShowDeleteButton="True" />
                                    </Columns>
                                    <FooterStyle BackColor="#CCCC99" />
                                    <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                                    <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                                    <RowStyle BackColor="#F7F7DE" />
                                    <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                                    <SortedAscendingCellStyle BackColor="#FBFBF2" />
                                    <SortedAscendingHeaderStyle BackColor="#848384" />
                                    <SortedDescendingCellStyle BackColor="#EAEAD3" />
                                    <SortedDescendingHeaderStyle BackColor="#575357" />
                                </asp:GridView>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style296" colspan="5"></td>
                        </tr>
                    </table>
                  
                </asp:View>
                <asp:View ID="View2" runat="server">
                    <table class="auto-style79">
                        <tr>
                            <td class="auto-style264"></td>
                            <td class="auto-style113"></td>
                            <td class="auto-style122"></td>
                            <td class="auto-style258"></td>
                            <td class="auto-style252"></td>
                            <td class="auto-style112"></td>
                        </tr>
                        <tr>
                            <td class="auto-style265">
                                <asp:TextBox ID="TextBox23" runat="server" BorderStyle="None" CssClass="textalan" Enabled="False" Width="47px"></asp:TextBox>
                            </td>
                            <td class="auto-style114">Salon Adı:</td>
                            <td class="auto-style123">
                                <asp:TextBox ID="TextBox8" runat="server" Width="180px" Height="30px" BorderStyle="None" CssClass="textalan"></asp:TextBox>
                            </td>
                            <td class="auto-style259"></td>
                            <td class="auto-style253"></td>
                            <td class="auto-style108"></td>
                        </tr>
                        <tr>
                            <td class="auto-style266"></td>
                            <td class="auto-style117">&nbsp;</td>
                            <td class="auto-style124">
                                &nbsp;</td>
                            <td class="auto-style260"></td>
                            <td class="auto-style254"></td>
                            <td class="auto-style118"></td>
                        </tr>
                        <tr>
                            <td class="auto-style267"></td>
                            <td class="auto-style120">&nbsp;</td>
                            <td class="auto-style125">
                                &nbsp;</td>
                            <td class="auto-style261"></td>
                            <td class="auto-style255"></td>
                            <td class="auto-style121">&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style268"></td>
                            <td class="auto-style130" colspan="2">Salon Dizayn</td>
                            <td class="auto-style262"></td>
                            <td class="auto-style256"></td>
                            <td class="auto-style130"></td>
                        </tr>
                        <tr>
                            <td class="auto-style269"></td>
                            <td class="auto-style270">Sıra Sayısı:</td>
                            <td class="auto-style137">
                                <asp:TextBox ID="TextBox16" runat="server" Height="25px" BorderStyle="None" CssClass="textalan"></asp:TextBox>
                            </td>
                            <td class="auto-style263"></td>
                            <td class="auto-style257"></td>
                            <td class="auto-style34"></td>
                        </tr>
                        <tr>
                            <td class="auto-style269">&nbsp;</td>
                            <td class="auto-style270">Koltuk Sayısı:</td>
                            <td class="auto-style137">
                                <asp:TextBox ID="TextBox17" runat="server" Height="24px" BorderStyle="None" CssClass="textalan"></asp:TextBox>
                            </td>
                            <td class="auto-style263">
                                &nbsp;</td>
                            <td class="auto-style257">&nbsp;</td>
                            <td class="auto-style34">&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style269">&nbsp;</td>
                            <td class="auto-style270">&nbsp;</td>
                            <td class="auto-style137">&nbsp;</td>
                            <td class="auto-style263">&nbsp;</td>
                            <td class="auto-style257">&nbsp;</td>
                            <td class="auto-style34">&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style297"></td>
                            <td class="auto-style298"></td>
                            <td class="auto-style302">
                                <asp:Button ID="Button9" runat="server" BackColor="#3366FF" BorderStyle="None" ForeColor="White" Height="40px" OnClick="Button9_Click" Text="Kaydet" Width="180px" CssClass="textalan" />
                            </td>
                            <td class="auto-style300"></td>
                            <td class="auto-style301"></td>
                            <td class="auto-style78"></td>
                        </tr>
                        <tr>
                            <td class="auto-style271" colspan="6">
                                <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="Kimlik" ForeColor="Black" GridLines="Vertical" OnRowDeleting="GridView3_RowDeleting" OnSelectedIndexChanging="GridView3_SelectedIndexChanging" Width="739px">
                                    <AlternatingRowStyle BackColor="White" />
                                    <Columns>
                                        <asp:CommandField HeaderText="SEÇ" ShowSelectButton="True" />
                                        <asp:BoundField DataField="salonadi" HeaderText="SALON ADI" />
                                        <asp:CommandField HeaderText="SİL" ShowDeleteButton="True" />
                                    </Columns>
                                    <FooterStyle BackColor="#CCCC99" />
                                    <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                                    <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                                    <RowStyle BackColor="#F7F7DE" />
                                    <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                                    <SortedAscendingCellStyle BackColor="#FBFBF2" />
                                    <SortedAscendingHeaderStyle BackColor="#848384" />
                                    <SortedDescendingCellStyle BackColor="#EAEAD3" />
                                    <SortedDescendingHeaderStyle BackColor="#575357" />
                                </asp:GridView>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style271" colspan="6">&nbsp;</td>
                        </tr>
                    </table>
                    
                  
                </asp:View>
                <asp:View ID="View3" runat="server">
                    <table class="auto-style61">
                        <tr>
                            <td class="auto-style288"></td>
                            <td class="auto-style289">Dosya Seç:</td>
                            <td class="auto-style290">
                                <asp:FileUpload ID="FileUpload4" runat="server" Width="239px" BorderStyle="None" CssClass="textalan" />
                            </td>
                            <td class="auto-style291"></td>
                            <td class="auto-style292"></td>
                        </tr>
                        <tr>
                            <td class="auto-style284"></td>
                            <td class="auto-style272">Resim İsmi:</td>
                            <td class="auto-style273">
                                &nbsp;&nbsp;&nbsp;
                                <asp:TextBox ID="TextBox19" runat="server" BorderStyle="None" CssClass="textalan"></asp:TextBox>
                                &nbsp;<asp:Button ID="Button14" runat="server" OnClick="Button14_Click1" Text="Yükle" Width="78px" BorderStyle="None" CssClass="textalan" />
                            </td>
                            <td class="auto-style286"></td>
                            <td class="auto-style275"></td>
                        </tr>
                        <tr>
                            <td class="auto-style153"></td>
                            <td class="auto-style151">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                            <td class="auto-style152">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Silinecek Resimin İsmin Yazınız<br />
                                <br />
                                dosyalar/slaytresimler/<asp:TextBox ID="TextBox18" runat="server" Width="49px" BorderStyle="None" CssClass="textalan"></asp:TextBox>
                                &nbsp;.jpg&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Button ID="Button15" runat="server" OnClick="Button15_Click" Text="Sil" Width="57px" BorderStyle="None" CssClass="textalan" />
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                            <td class="auto-style285" rowspan="4">&nbsp;</td>
                            <td class="auto-style170"></td>
                        </tr>
                        <tr>
                            <td class="auto-style283">&nbsp;</td>
                            <td colspan="2" rowspan="3">
                                <asp:DataList ID="DataList1" runat="server" OnItemCommand="DataList1_ItemCommand" OnSelectedIndexChanged="DataList1_SelectedIndexChanged" RepeatColumns="4" RepeatDirection="Horizontal">
                                    <ItemTemplate>
                                        <asp:Image ID="Image3" runat="server" Height="78px" ImageUrl="<%# Container.DataItem %>" Width="107px" />
                                        <br />
                                        <asp:Label ID="Label7" runat="server" Text="<%# Container.DataItem %>"></asp:Label>&nbsp;&nbsp;&nbsp;
                                    </ItemTemplate>
                                    <SelectedItemStyle Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" ForeColor="Aqua" />
                                    <SelectedItemTemplate>
                                        <asp:Image ID="Image2" runat="server" Height="78px" ImageUrl="<%# Container.DataItem %>" Width="95px" />
                                    </SelectedItemTemplate>
                                </asp:DataList>
                            </td>
                            <td class="auto-style168">&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style161"></td>
                            <td class="auto-style171"></td>
                        </tr>
                        <tr>
                            <td class="auto-style166"></td>
                            <td class="auto-style172">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style278"></td>
                            <td class="auto-style144"></td>
                            <td class="auto-style148">
                                &nbsp;</td>
                            <td class="auto-style287"></td>
                            <td class="auto-style169"></td>
                        </tr>
                    </table>
                </asp:View>
                <asp:View ID="View4" runat="server">
                    <h6 style="text-align:center; color:#85FA81; font-size:25px;margin-top:10px;">...ADMİN PANELİNE HOŞGELDİNİZ...</h6>
                    <table class="auto-style212">
                        <tr>
                            <td class="auto-style198">&nbsp;</td>
                            <td class="auto-style198"></td>
                            <td class="auto-style201"></td>
                            <td class="auto-style190"></td>
                            <td class="auto-style191"></td>
                        </tr>
                        <tr>
                            <td class="auto-style202">
                                &nbsp;</td>
                            <td class="auto-style202">
                                <img class="auto-style210" src="file:///C:/Users/Onur%20Rahmi%20ÖZDEMİR/Downloads/shopping-support-online.png" />
                            </td>
                            <td class="auto-style203">Çevrimiçi Ziyaretci:</td>
                            <td class="auto-style204">
                                <asp:Label ID="Label3" runat="server" BorderStyle="None" Font-Size="30px" ForeColor="#999966" Text="Label"></asp:Label>
                            </td>
                            <td class="auto-style205"></td>
                        </tr>
                        <tr>
                            <td class="auto-style202">
                                &nbsp;</td>
                            <td class="auto-style202">
                                <img class="auto-style210" src="file:///C:/Users/Onur%20Rahmi%20ÖZDEMİR/Downloads/group.png" />
                            </td>
                            <td class="auto-style203">Toplam Ziyaretci Sayısı:</td>
                            <td class="auto-style204">
                                <asp:Label ID="Label4" runat="server" Font-Size="30px" Text="Label" ForeColor="#999966"></asp:Label>
                            </td>
                            <td class="auto-style205">&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style206">
                                &nbsp;</td>
                            <td class="auto-style206">
                                <img class="auto-style210" src="file:///C:/Users/Onur%20Rahmi%20ÖZDEMİR/Downloads/multiple-users-silhouette.png" />
                            </td>
                            <td class="auto-style207">Kayıtlı Üye Sayısı:</td>
                            <td class="auto-style208">
                                <asp:Label ID="Label6" runat="server" Font-Bold="False" Font-Size="30px" ForeColor="#999966" Text="Label"></asp:Label>
                            </td>
                            <td class="auto-style209"></td>
                        </tr>
                        <tr>
                            <td class="auto-style202">
                                &nbsp;</td>
                            <td class="auto-style202">
                                <img class="auto-style210" src="file:///C:/Users/Onur%20Rahmi%20ÖZDEMİR/Downloads/clapperboard.png" />
                            </td>
                            <td class="auto-style203">Kayıtlı Film Sayısı:</td>
                            <td class="auto-style204">
                                <asp:Label ID="Label5" runat="server" Font-Size="30px" ForeColor="#999966" Text="Label"></asp:Label>
                            </td>
                            <td class="auto-style205"></td>
                        </tr>
                        <tr>
                            <td class="auto-style198">
                                &nbsp;</td>
                            <td class="auto-style198">
                                <img class="auto-style210" src="file:///C:/Users/Onur%20Rahmi%20ÖZDEMİR/Downloads/chairs.png" />
                            </td>
                            <td class="auto-style201">Toplam Rezervasyon Sayısı:</td>
                            <td class="auto-style190">
                                <asp:Label ID="Label8" runat="server" Font-Size="30px" ForeColor="#999966" Text="Label"></asp:Label>
                            </td>
                            <td class="auto-style191">
                                <asp:Button ID="Button25" runat="server" BackColor="#3366FF" BorderStyle="None" CssClass="textalan" ForeColor="White" Height="40px" OnClick="Button25_Click" Text="Gün Sonu" Width="180px" />
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style198">&nbsp;</td>
                            <td class="auto-style198">&nbsp;</td>
                            <td class="auto-style201">&nbsp;</td>
                            <td class="auto-style190">&nbsp;</td>
                            <td class="auto-style191">&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style198">&nbsp;</td>
                            <td class="auto-style211" colspan="4">
                                <br />
                                <h2 style="text-align:center;color:#286EEA;">5 Günlük Ziyaretci İstatisli</h2>
                                
                                <asp:Chart ID="Chart1" runat="server" Width="493px" BackColor="GradientActiveCaption">
                                    <series>
                                        <asp:Series Name="Tarih" YValuesPerPoint="3">
                                        </asp:Series>
                                    </series>
                                    <chartareas>
                                        <asp:ChartArea Name="ChartArea1">
                                        </asp:ChartArea>
                                    </chartareas>
                                </asp:Chart>
                            </td>
                        </tr>
                    </table>
                    <div style="margin:auto;">

                        
                    </div>


                </asp:View>
                <asp:View ID="View5" runat="server">
                    <table class="auto-style61">
                        <tr>
                            <td class="auto-style215">&nbsp;</td>
                            <td class="auto-style217">&nbsp;</td>
                            <td class="auto-style230">&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style218">
                                <asp:TextBox ID="TextBox22" runat="server" BorderStyle="None" CssClass="textalan" Enabled="False" Width="36px"></asp:TextBox>
                            </td>
                            <td class="auto-style219">Kampanya Baslık:</td>
                            <td class="auto-style231">
                                <asp:TextBox ID="TextBox12" runat="server" Height="20px" Width="180px" BorderStyle="None" CssClass="textalan"></asp:TextBox>
                            </td>
                            <td class="auto-style220"></td>
                        </tr>
                        <tr>
                            <td class="auto-style221"></td>
                            <td class="auto-style222">kampanya resim:</td>
                            <td class="auto-style305">
                                <asp:FileUpload ID="FileUpload3" runat="server" BorderStyle="None" CssClass="textalan" />
                            </td>
                            <td class="auto-style223"></td>
                        </tr>
                        <tr>
                            <td class="auto-style224"></td>
                            <td class="auto-style225">kampanya içerik:</td>
                            <td class="auto-style233">
                                <asp:TextBox ID="TextBox13" runat="server" Height="46px" Width="180px" TextMode="MultiLine" BorderStyle="None" CssClass="textalan"></asp:TextBox>
                            </td>
                            <td class="auto-style226"></td>
                        </tr>
                        <tr>
                            <td class="auto-style221"></td>
                            <td class="auto-style222">Kampanya başlangıç tarihi:</td>
                            <td class="auto-style305">
                                <asp:TextBox ID="TextBox14" runat="server" Height="20px" Width="180px" BorderStyle="None" CssClass="textalan"></asp:TextBox>
                            </td>
                            <td class="auto-style223"></td>
                        </tr>
                        <tr>
                            <td class="auto-style227"></td>
                            <td class="auto-style228">Kampanya bitiş tarihi:</td>
                            <td class="auto-style234">
                                <asp:TextBox ID="TextBox15" runat="server" Height="20px" Width="180px" BorderStyle="None" CssClass="textalan"></asp:TextBox>
                            </td>
                            <td class="auto-style229"></td>
                        </tr>
                        <tr>
                            <td class="auto-style306"></td>
                            <td class="auto-style307"></td>
                            <td class="auto-style308">
                                <asp:Button ID="Button13" runat="server" BackColor="#495EF2" BorderStyle="None" ForeColor="White" Height="40px" Text="Kaydet" Width="150px" OnClick="Button13_Click" CssClass="textalan" />
                            </td>
                            <td class="auto-style309"></td>
                        </tr>
                        <tr>
                            <td class="auto-style65" colspan="4">
                                <asp:GridView ID="GridView4" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="Kimlik" ForeColor="Black" GridLines="Vertical" OnRowDeleting="GridView4_RowDeleting" OnSelectedIndexChanging="GridView4_SelectedIndexChanging" Width="745px">
                                    <AlternatingRowStyle BackColor="White" />
                                    <Columns>
                                        <asp:CommandField HeaderText="SEÇ" ShowSelectButton="True" />
                                        <asp:BoundField DataField="kampanyabaslik" HeaderText="KAMPANYA" />
                                        <asp:CommandField HeaderText="SİL" ShowDeleteButton="True" />
                                    </Columns>
                                    <FooterStyle BackColor="#CCCC99" />
                                    <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                                    <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                                    <RowStyle BackColor="#F7F7DE" />
                                    <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                                    <SortedAscendingCellStyle BackColor="#FBFBF2" />
                                    <SortedAscendingHeaderStyle BackColor="#848384" />
                                    <SortedDescendingCellStyle BackColor="#EAEAD3" />
                                    <SortedDescendingHeaderStyle BackColor="#575357" />
                                </asp:GridView>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style238"></td>
                            <td class="auto-style241"></td>
                            <td class="auto-style240"></td>
                            <td class="auto-style242"></td>
                        </tr>
                    </table>
                </asp:View>
                <asp:View ID="View6" runat="server">
                    <table class="auto-style61">
                        <tr>
                            <td>&nbsp;</td>
                            <td>Sayfa Başlık:</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td>
                                <asp:TextBox ID="TextBox21" runat="server" BorderStyle="None" CssClass="textalan" Enabled="False" Width="25px"></asp:TextBox>
                                <asp:TextBox ID="TextBox20" runat="server" BorderStyle="None" CssClass="textalan"></asp:TextBox>
                            </td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td>içerik:</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td>
                                <CKEditor:CKEditorControl ID="editor" runat="server" />
                            </td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style295"></td>
                            <td class="auto-style295">
                                <asp:Button ID="Button17" runat="server" BackColor="#495EF2" BorderStyle="None" CssClass="textalan" ForeColor="White" Height="40px" OnClick="Button17_Click" Text="Sayfa Oluştur" Width="150px" />
                                &nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="Button19" runat="server" BackColor="#495EF2" BorderStyle="None" CssClass="textalan" ForeColor="White" Height="40px" OnClick="Button19_Click" Text="Düzenle" Width="150px" />
                                &nbsp;&nbsp;&nbsp;
                                </td>
                            <td class="auto-style295"></td>
                            <td class="auto-style295"></td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td>SAYFA İŞLEMLERİ</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Kimlik" OnRowDeleting="GridView1_RowDeleting" OnSelectedIndexChanging="GridView1_SelectedIndexChanging" Width="714px" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical">
                                    <AlternatingRowStyle BackColor="White" />
                                    <Columns>
                                        <asp:CommandField HeaderText="SEÇ" ShowSelectButton="True" />
                                        <asp:BoundField DataField="baslik" HeaderText="Sayfa Başlık" />
                                        <asp:CommandField ShowDeleteButton="True" />
                                    </Columns>
                                    <FooterStyle BackColor="#CCCC99" />
                                    <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                                    <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                                    <RowStyle BackColor="#F7F7DE" />
                                    <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                                    <SortedAscendingCellStyle BackColor="#FBFBF2" />
                                    <SortedAscendingHeaderStyle BackColor="#848384" />
                                    <SortedDescendingCellStyle BackColor="#EAEAD3" />
                                    <SortedDescendingHeaderStyle BackColor="#575357" />
                                </asp:GridView>
                            </td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                    </table>
                </asp:View>
                <asp:View ID="View7" runat="server">
                    <table class="auto-style0">
                        <tr>
                            <td class="auto-style317"></td>
                            <td class="auto-style311">Seans Seç</td>
                            <td class="auto-style314">
                                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" Height="30px" Width="167px">
                                </asp:DropDownList>
                            </td>
                            <td class="auto-style69"></td>
                            <td class="auto-style69"></td>
                        </tr>
                        <tr>
                            <td class="auto-style317"></td>
                            <td class="auto-style311">Film Seç:</td>
                            <td class="auto-style314">
                                <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" Height="30px" Width="167px">
                                </asp:DropDownList>
                            </td>
                            <td class="auto-style69"></td>
                            <td class="auto-style69"></td>
                        </tr>
                        <tr>
                            <td class="auto-style318"></td>
                            <td class="auto-style312">Salon Seç:</td>
                            <td class="auto-style315">
                                <asp:DropDownList ID="DropDownList3" runat="server" AutoPostBack="True" Height="30px" Width="167px">
                                </asp:DropDownList>
                            </td>
                            <td class="auto-style313"></td>
                            <td class="auto-style313"></td>
                        </tr>
                        <tr>
                            <td class="auto-style319">&nbsp;</td>
                            <td class="auto-style310">&nbsp;</td>
                            <td class="auto-style316">
                                <asp:Button ID="Button20" runat="server" BackColor="#495EF2" BorderStyle="None" CssClass="textalan" ForeColor="White" Height="40px" OnClick="Button20_Click" Text="Seans Oluştur" Width="150px" />
                            </td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style319">&nbsp;</td>
                            <td class="auto-style310">&nbsp;</td>
                            <td class="auto-style316">&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td colspan="5">
                                <asp:GridView ID="GridView5" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="Kimlik" ForeColor="Black" GridLines="Horizontal" OnRowDeleting="GridView5_RowDeleting" Width="745px">
                                    <Columns>
                                        <asp:CommandField ShowSelectButton="True" />
                                        <asp:BoundField DataField="Kimlik" />
                                        <asp:BoundField DataField="saat" HeaderText="Seans" />
                                        <asp:BoundField DataField="filmadi" HeaderText="Film Adı" />
                                        <asp:CommandField DeleteText="Kaldır" HeaderText="İptal Et" ShowDeleteButton="True" />
                                    </Columns>
                                    <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                                    <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                                    <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                                    <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                                    <SortedAscendingCellStyle BackColor="#F7F7F7" />
                                    <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                                    <SortedDescendingCellStyle BackColor="#E5E5E5" />
                                    <SortedDescendingHeaderStyle BackColor="#242121" />
                                </asp:GridView>
                            </td>
                        </tr>
                    </table>
                </asp:View>
                <asp:View ID="View8" runat="server">
                    <table class="auto-style0">
                        <tr>
                            <td>&nbsp;</td>
                            <td class="auto-style320">&nbsp;</td>
                            <td class="auto-style321">&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style324"></td>
                            <td class="auto-style322">Kullanıcı Adı:</td>
                            <td class="auto-style323">
                                <asp:TextBox ID="TextBox24" runat="server" BorderStyle="None" CssClass="textalan"></asp:TextBox>
                            </td>
                            <td class="auto-style324"></td>
                        </tr>
                        <tr>
                            <td class="auto-style324"></td>
                            <td class="auto-style322">Şifre:</td>
                            <td class="auto-style323">
                                <asp:TextBox ID="TextBox25" runat="server" BorderStyle="None" CssClass="textalan"></asp:TextBox>
                            </td>
                            <td class="auto-style324"></td>
                        </tr>
                        <tr>
                            <td class="auto-style334"></td>
                            <td class="auto-style331"></td>
                            <td class="auto-style332">
                                <asp:Button ID="Button22" runat="server" BackColor="#495EF2" BorderStyle="None" CssClass="auto-style329" ForeColor="White" Height="40px" OnClick="Button22_Click" Text="Kullanıcı Oluştur" Width="150px" />
                            </td>
                            <td class="auto-style334"></td>
                        </tr>
                        <tr>
                            <td class="auto-style334" colspan="4">
                                <asp:GridView ID="GridView6" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal" Width="742px" DataKeyNames="Kimlik" OnRowDeleting="GridView6_RowDeleting">
                                    <Columns>
                                        <asp:BoundField DataField="kullaniciadi" HeaderText="Kullanıcı Adı" />
                                        <asp:CommandField HeaderText="Sil" ShowDeleteButton="True" />
                                    </Columns>
                                    <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                                    <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                                    <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                                    <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                                    <SortedAscendingCellStyle BackColor="#F7F7F7" />
                                    <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                                    <SortedDescendingCellStyle BackColor="#E5E5E5" />
                                    <SortedDescendingHeaderStyle BackColor="#242121" />
                                </asp:GridView>
                            </td>
                        </tr>
                    </table>
                </asp:View>
                <asp:View ID="View9" runat="server">

                    <table class="auto-style0">
                        <tr>
                            <td class="auto-style339"></td>
                            <td class="auto-style340">Reklam Başlık:</td>
                            <td class="auto-style73">
                                <asp:TextBox ID="TextBox26" runat="server" BorderStyle="None" CssClass="textalan"></asp:TextBox>
                            </td>
                            <td class="auto-style73"></td>
                        </tr>
                        <tr>
                            <td class="auto-style341"></td>
                            <td class="auto-style342">Reklam Linki:</td>
                            <td class="auto-style343">
                                <asp:TextBox ID="TextBox27" runat="server" BorderStyle="None" CssClass="textalan"></asp:TextBox>
                                <br />
                                <asp:Label ID="Label9" runat="server" Text="Örnek:www.google.com.tr"></asp:Label>
                            </td>
                            <td class="auto-style343"></td>
                        </tr>
                        <tr>
                            <td class="auto-style344"></td>
                            <td class="auto-style345">Reklam Resim:</td>
                            <td class="auto-style346">
                                <asp:FileUpload ID="FileUpload5" runat="server" BorderStyle="None" />
                                <br />
                            </td>
                            <td class="auto-style346"></td>
                        </tr>
                        <tr>
                            <td class="auto-style337"></td>
                            <td class="auto-style338">Aciklama:</td>
                            <td class="auto-style347">
                                <asp:TextBox ID="TextBox28" runat="server" BorderStyle="None" CssClass="textalan" TextMode="MultiLine"></asp:TextBox>
                            </td>
                            <td class="auto-style347"></td>
                        </tr>
                        <tr>
                            <td class="auto-style348"></td>
                            <td class="auto-style69" colspan="2">
                                <asp:Button ID="Button24" runat="server" BackColor="#495EF2" BorderStyle="None" CssClass="auto-style329" ForeColor="White" Height="40px" OnClick="Button24_Click" Text="Reklam Oluştur" Width="150px" />
                            </td>
                            <td class="auto-style69"></td>
                        </tr>
                        <tr>
                            <td class="auto-style69" colspan="4">
                                <asp:GridView ID="GridView7" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="Kimlik" ForeColor="Black" GridLines="Horizontal" OnRowDeleting="GridView7_RowDeleting" Width="739px">
                                    <Columns>
                                        <asp:CommandField ShowSelectButton="True" />
                                        <asp:BoundField DataField="reklambaslik" HeaderText="Reklam Başlık" />
                                        <asp:CommandField DeleteText="Kaldır" ShowDeleteButton="True" />
                                    </Columns>
                                    <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                                    <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                                    <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                                    <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                                    <SortedAscendingCellStyle BackColor="#F7F7F7" />
                                    <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                                    <SortedDescendingCellStyle BackColor="#E5E5E5" />
                                    <SortedDescendingHeaderStyle BackColor="#242121" />
                                </asp:GridView>
                            </td>
                        </tr>
                    </table>

                </asp:View>
                <asp:View ID="View10" runat="server">
                    <table class="auto-style0">
                        <tr>
                            <td class="auto-style350"></td>
                            <td class="auto-style350" colspan="2">Üyeler</td>
                            <td class="auto-style350"></td>
                        </tr>
                        <tr>
                            <td colspan="4">
                                <asp:GridView ID="GridView8" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal" Width="744px" DataKeyNames="Kimlik" OnRowDeleting="GridView8_RowDeleting">
                                    <Columns>
                                        <asp:BoundField DataField="eposta" HeaderText="Eposta" />
                                        <asp:CommandField ShowDeleteButton="True" />
                                    </Columns>
                                    <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                                    <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                                    <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                                    <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                                    <SortedAscendingCellStyle BackColor="#F7F7F7" />
                                    <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                                    <SortedDescendingCellStyle BackColor="#E5E5E5" />
                                    <SortedDescendingHeaderStyle BackColor="#242121" />
                                </asp:GridView>
                            </td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td class="auto-style351">&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                    </table>
                </asp:View>
            </asp:MultiView>
         
        </div>
         
    </form>
     
</body>
</html>
