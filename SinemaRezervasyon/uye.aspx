<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="uye.aspx.cs" Inherits="SinemaRezervasyon.uye" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link href="stil.css" rel="stylesheet" />
    <title>UYE İŞLEMLERİ</title>
    <style type="text/css">
        .auto-style36 {
            width: 100%;
        }
        .auto-style37 {
            width: 193px;
        }
       
        .auto-style48 {
            height: 48px;
            width: 101px;
        }
        .auto-style57 {
            float: left;
            width: 600px;
            height: auto;
            background-color:rgba(38, 138, 220, 0.66);
            border-radius:5px;
            color:white;
            font-weight:bold;
            margin-top:100px;
            margin-left:100px;
            
        }
       
        .auto-style60 {
            height: 48px;
            width: 18px;
        }
        .auto-style62 {
            height: 56px;
            width: 18px;
        }
        .auto-style63 {
            height: 56px;
            width: 101px;
        }
        .auto-style66 {
            height: 31px;
            width: 18px;
        }
        .auto-style67 {
            height: 31px;
            width: 101px;
        }
        .auto-style70 {
            height: 32px;
            width: 18px;
        }
        .auto-style71 {
            height: 56px;
            width: 164px;
        }
        .auto-style72 {
            height: 31px;
            width: 164px;
        }
        .auto-style73 {
            height: 48px;
            width: 164px;
        }
        .auto-style74 {
            height: 32px;
            width: 164px;
        }
        .auto-style75 {
            height: 32px;
            width: 101px;
        }
        .auto-style76 {
            width: 2px;
            background-color:white;
        }
       
        .auto-style77 {
            height: 23px;
            width: 18px;
        }
        .auto-style78 {
            height: 23px;
            width: 101px;
        }
        .auto-style79 {
            height: 23px;
            width: 164px;
        }
        .auto-style80 {
            /*margin-left: 24px;*/
            border-radius:4px;
        }
       
        .auto-style82 {
            width: 13px;
            height: 14px;
        }
        .auto-style83 {
            height: 14px;
        }
        .auto-style84 {
            width: 13px;
            height: 35px;
        }
        .auto-style85 {
            height: 35px;
        }
        .auto-style87 {
            height: 14px;
            width: 116px;
        }
        .auto-style88 {
            height: 35px;
            width: 116px;
        }
        .auto-style96 {
            width: 13px;
            height: 21px;
        }
        .auto-style99 {
            width: 13px;
            height: 43px;
        }
        .auto-style100 {
            height: 43px;
            width: 116px;
        }
        .auto-style103 {
            height: 43px;
        }
        .auto-style104 {
            width: 13px;
            height: 41px;
        }
        .auto-style105 {
            height: 41px;
            width: 116px;
        }
        .auto-style108 {
            height: 41px;
        }
        .auto-style109 {
            width: 13px;
            height: 48px;
        }
        .auto-style110 {
            height: 48px;
            width: 116px;
        }
        .auto-style113 {
            height: 48px;
        }
        .auto-style114 {
            width: 13px;
            height: 44px;
        }
        .auto-style115 {
            height: 44px;
            width: 116px;
        }
        .auto-style118 {
            height: 44px;
        }
        .auto-style119 {
            width: 13px;
            height: 36px;
        }
        .auto-style120 {
            height: 36px;
            width: 134px;
        }
        .auto-style123 {
            height: 36px;
        }
       
        .auto-style132 {
            height: 14px;
            width: 170px;
        }
        .auto-style133 {
            height: 35px;
            width: 170px;
        }
        .auto-style135 {
            height: 41px;
            width: 170px;
        }
        .auto-style136 {
            height: 48px;
            width: 170px;
        }
        .auto-style137 {
            height: 44px;
            width: 170px;
        }
        .auto-style138 {
            width: 170px;
            height: 21px;
        }
        .auto-style139 {
            height: 43px;
            width: 170px;
        }
        .auto-style140 {
            width: 116px;
            height: 21px;
        }
        .auto-style141 {
            height: 21px;
        }
       
        .auto-style143 {
            width: 65px;
            height: 78px;
        }
        .auto-style144 {
            width: 189px;
            height: 78px;
        }
        .auto-style145 {
            width: 151px;
        }
       
        .auto-style146 {
            width: 151px;
            height: 87px;
        }
        .auto-style147 {
            width: 65px;
            height: 87px;
        }
        .auto-style148 {
            width: 189px;
            height: 87px;
        }
        .auto-style149 {
            width: 151px;
            height: 38px;
        }
        .auto-style150 {
            width: 65px;
            height: 38px;
        }
        .auto-style151 {
            width: 189px;
            height: 38px;
        }
        .auto-style152 {
            height: 32px;
        }
        .auto-style156 {
            width: 151px;
            height: 78px;
        }
        .auto-style157 {
            height: 78px;
        }
        .auto-style158 {
            width: 151px;
            height: 50px;
        }
        .auto-style159 {
            width: 65px;
            height: 50px;
        }
        .auto-style160 {
            width: 189px;
            height: 50px;
        }
       
        .auto-style161 {
            height: 14px;
            width: 134px;
        }
        .auto-style162 {
            height: 35px;
            width: 134px;
        }
        .auto-style163 {
            height: 43px;
            width: 134px;
        }
        .auto-style164 {
            height: 41px;
            width: 134px;
        }
        .auto-style165 {
            height: 48px;
            width: 134px;
        }
        .auto-style166 {
            height: 44px;
            width: 134px;
        }
        .auto-style167 {
            width: 134px;
            height: 21px;
        }
       
        </style>
</head>
<body>
    <header>

        <div class="auto-style1">
            &nbsp;<a href="index.aspx"><img src="dosyalar/logo.png" /></a>

        </div>

    </header>
    <form id="form1" runat="server">
        <div class="sol_menu" style="margin-top:250px;">
            <table class="auto-style36">
                <tr>
                    <td class="auto-style37">
                        <asp:Button ID="Button1" runat="server" BackColor="#322F2F" BorderStyle="None" Font-Bold="True" ForeColor="White" Height="40px" Text="Uye Giriş" Width="195px" OnClick="Button1_Click" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style37">
                        <asp:Button ID="Button2" runat="server" BackColor="#322F2F" BorderStyle="None" Font-Bold="True" ForeColor="White" Height="40px" Text="Üye Kayıt" Width="195px" OnClick="Button2_Click" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
       <div class="auto-style57">
<asp:MultiView ID="MultiView1" runat="server">
    <asp:View ID="View1" runat="server">
        <table class="auto-style36">
            <tr>
                <td class="auto-style77"></td>
                <td class="auto-style78"></td>
                <td class="auto-style79">
                </td>
                <td class="auto-style76" rowspan="7">&nbsp; &nbsp;</td>
                <td rowspan="7" style="text-align: center">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    &nbsp;&nbsp; ÜYE GİRİŞİ&nbsp;
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    &nbsp;&nbsp;&nbsp;
                    <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Şifremi Unuttum</asp:LinkButton>
                </td>
            </tr>
            <tr>
                <td class="auto-style62"></td>
                <td class="auto-style63">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Eposta:</td>
                <td class="auto-style71">
                    <asp:TextBox ID="TextBox1" runat="server" Height="30px" Width="150px" BorderStyle="None" CssClass="textalan"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style66"></td>
                <td class="auto-style67"></td>
                <td class="auto-style72">
                </td>
            </tr>
            <tr>
                <td class="auto-style60"></td>
                <td class="auto-style48">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Şifre:</td>
                <td class="auto-style73">
                    <asp:TextBox ID="TextBox2" runat="server" Height="30px" Width="150px" TextMode="Password" BorderStyle="None" CssClass="textalan"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style70"></td>
                <td class="auto-style75"></td>
                <td class="auto-style74">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style70">&nbsp;</td>
                <td class="auto-style75">&nbsp;</td>
                <td class="auto-style74">&nbsp;<asp:Button ID="Button3" runat="server" BackColor="#85FA81" BorderStyle="None" CssClass="auto-style80" Font-Bold="True" Font-Size="15px" ForeColor="White" Height="30px" Text="Giriş" Width="143px" OnClick="Button3_Click" />
                </td>
            </tr>
            <tr>
                <td class="auto-style70">&nbsp;</td>
                <td class="auto-style152" colspan="2" style="text-align: center">&nbsp;</td>
            </tr>
        </table>
    </asp:View>
    <asp:View ID="View2" runat="server">
        <table class="auto-style36">
            <tr>
                <td class="auto-style82"></td>
                <td class="auto-style161"></td>
                <td class="auto-style132"></td>
                <td class="auto-style87"></td>
                <td class="auto-style83"></td>
            </tr>
            <tr>
                <td class="auto-style84">&nbsp;&nbsp;</td>
                <td class="auto-style162">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; İsim:</td>
                <td class="auto-style133">
                    <asp:TextBox ID="TextBox3" runat="server" Height="30px" Width="150px" BorderStyle="None" CssClass="textalan"></asp:TextBox>
                </td>
                <td class="auto-style88"></td>
                <td class="auto-style85">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style99"></td>
                <td class="auto-style163">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Soyisim:</td>
                <td class="auto-style139">
                    <asp:TextBox ID="TextBox4" runat="server" Height="30px" Width="150px" BorderStyle="None" CssClass="textalan"></asp:TextBox>
                </td>
                <td class="auto-style100"></td>
                <td class="auto-style103"></td>
            </tr>
            <tr>
                <td class="auto-style104"></td>
                <td class="auto-style164">&nbsp;&nbsp;&nbsp; Doğum Tarihi:</td>
                <td class="auto-style135">
                    <asp:TextBox ID="TextBox10" runat="server" Height="30px" Width="150px" BorderStyle="None" CssClass="textalan"></asp:TextBox>
                </td>
                <td class="auto-style105">Cinsiyet:</td>
                <td class="auto-style108">
                    <asp:DropDownList ID="DropDownList1" runat="server" Height="30px" Width="150px">
                        <asp:ListItem>ERKEK</asp:ListItem>
                        <asp:ListItem>KADIN</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style109"></td>
                <td class="auto-style165">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Eposta:</td>
                <td class="auto-style136">
                    <asp:TextBox ID="TextBox5" runat="server" Height="30px" Width="150px" BorderStyle="None" CssClass="textalan"></asp:TextBox>
                </td>
                <td class="auto-style110">Eposta Tekrar:</td>
                <td class="auto-style113">
                    <asp:TextBox ID="TextBox6" runat="server" Height="30px" Width="150px" BorderStyle="None" CssClass="textalan"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style99"></td>
                <td class="auto-style163">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Cep Tel:</td>
                <td class="auto-style139">
                    <asp:TextBox ID="TextBox7" runat="server" Height="30px" Width="150px" BorderStyle="None" CssClass="textalan"></asp:TextBox>
                </td>
                <td class="auto-style100"></td>
                <td class="auto-style103"></td>
            </tr>
            <tr>
                <td class="auto-style114"></td>
                <td class="auto-style166">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Şifre:</td>
                <td class="auto-style137">
                    <asp:TextBox ID="TextBox8" runat="server" Height="30px" Width="150px" TextMode="Password" BorderStyle="None" CssClass="textalan"></asp:TextBox>
                </td>
                <td class="auto-style115">Şifre Tekrar:</td>
                <td class="auto-style118">
                    <asp:TextBox ID="TextBox9" runat="server" Height="30px" Width="150px" TextMode="Password" BorderStyle="None" CssClass="textalan"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style119">&nbsp;</td>
                <td class="auto-style120"></td>
                <td class="auto-style123" colspan="2">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button4" runat="server" Text="Kayıt Ol" BackColor="#30A4E1" BorderStyle="None" Font-Bold="True" Font-Size="15px" ForeColor="White" Height="30px" Width="130px" OnClick="Button4_Click" CssClass="textalan" />
                </td>
                <td class="auto-style123">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style96"></td>
                <td class="auto-style167"></td>
                <td class="auto-style138"></td>
                <td class="auto-style140"></td>
                <td class="auto-style141"></td>
            </tr>
        </table>
    </asp:View>
    <asp:View ID="View3" runat="server">
        <table class="auto-style36">
            <tr>
                <td class="auto-style146"></td>
                <td class="auto-style147"></td>
                <td class="auto-style148"></td>
            </tr>
            <tr>
                <td class="auto-style156"></td>
                <td class="auto-style143">Eposta:</td>
                <td class="auto-style144">
                    <asp:TextBox ID="TextBox11" runat="server" Height="26px" Width="170px" BorderStyle="None" CssClass="textalan"></asp:TextBox>
                </td>
                <td class="auto-style157"></td>
            </tr>
            <tr>
                <td class="auto-style149"></td>
                <td class="auto-style150"></td>
                <td class="auto-style151">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button5" runat="server" BackColor="#30A4E1" BorderStyle="None" Font-Bold="True" Font-Size="15px" ForeColor="White" Height="30px" OnClick="Button5_Click" Text="Gönder" Width="130px" CssClass="textalan" />
                </td>
            </tr>
            <tr>
                <td class="auto-style145">&nbsp;</td>
                <td colspan="2" style="text-align: center">
                    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style158"></td>
                <td class="auto-style159"></td>
                <td class="auto-style160"></td>
            </tr>
        </table>
    </asp:View>
           </asp:MultiView>

           
       </div>
        <p>
            &nbsp;</p>
    </form>

</body>
</html>
