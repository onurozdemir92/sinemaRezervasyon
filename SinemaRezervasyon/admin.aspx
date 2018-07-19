<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="admin.aspx.cs" Inherits="SinemaRezervasyon.admin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server" >
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link href="stil.css" rel="stylesheet" />
    <title>ADMİN PANELİNE GİRİŞ</title>
    <style type="text/css">
        .auto-style26 {
            width: 100%;
            height: 183px;
        }
        .auto-style27 {
            height: 31px;
        }
        .auto-style28 {
            height: 31px;
            width: 176px;
        }
        .auto-style29 {
            width: 176px;
        }
        .auto-style30 {
            text-align: center;
            color: white;
            font-weight: bold;
            font-size: 20px;
            width: 100%;
            height: 133px;
        }
    </style>
</head>
<body >
    <form id="form1" runat="server">
        <div  class="
            ana_div
            ">
            <table class="auto-style30">
                <tr>
                    <td class="auto-style27"></td>
                    <td class="auto-style28">ADMİN GİRİŞ</td>
                    <td class="auto-style27"></td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td class="auto-style29"><img src="dosyalar/laptop.png" /></td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td class="auto-style29">Kullanıcı Adı</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td class="auto-style29">
                        <asp:TextBox ID="TextBox1" runat="server" ForeColor="#0066FF" Height="30px" Width="165px" BorderStyle="None" CssClass="textalan"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td class="auto-style29">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td class="auto-style29">Şifre</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td class="auto-style29">
                        <asp:TextBox ID="TextBox2" runat="server" ForeColor="#0066FF" Height="30px" TextMode="Password" Width="165px" BorderStyle="None" CssClass="textalan"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td class="auto-style29">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td class="auto-style29">
                        <asp:Button ID="Button1" runat="server" BorderStyle="None" Font-Bold="True" Font-Italic="False" ForeColor="White" Height="30px" Text="ADMİN GİRİŞİ" Width="165px" OnClick="Button1_Click" CssClass="textalan" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td class="auto-style29">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
