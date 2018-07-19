<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="film.aspx.cs" Inherits="SinemaRezervasyon.film" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Film</title>
    <link href="stil.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style36 {
            width: 100%;
            height: 431px;
        }
        .auto-style37 {
            height: 239px;
        }
        .auto-style38 {
            height: 239px;
            width: 241px;
        }
        .auto-style42 {
            height: 239px;
            width: 341px;
        }
        .auto-style45 {
            width: 70%;
            height: 418px;
            
        }
        .auto-style49 {
            height: 176px;
            width: 341px;
        }
        .auto-style50 {
            width: 241px;
            height: 176px;
        }
        .auto-style51 {
            height: 176px;
        }
        .auto-style52 {
            height: 43px;
            width: 341px;
        }
        .auto-style53 {
            width: 241px;
            height: 43px;
        }
        .auto-style54 {
            height: 43px;
        }
        .auto-style55 {
            height: 47px;
            width: 341px;
        }
        *{
            background-color:#ECE7E7;
        }
        .auto-style56 {
            width: 241px;
            height: 47px;
        }
        .auto-style57 {
            height: 47px;
        }
        .auto-style58 {
            width: 341px;
            height: 42px;
        }
        .auto-style59 {
            width: 241px;
            height: 42px;
        }
        .auto-style60 {
            height: 42px;
        }
        .auto-style61 {
            height: 44px;
            width: 341px;
        }
        .auto-style62 {
            width: 241px;
            height: 44px;
        }
        .auto-style63 {
            height: 44px;
        }
        .auto-style64 {
            height: 49px;
            width: 341px;
        }
        .auto-style65 {
            width: 241px;
            height: 49px;
        }
        .auto-style66 {
            height: 49px;
        }
    </style>
</head>
<body>
    <header>
       <div style="background-color:#FF0B67" class="auto-style1">
            <a href="index.aspx"><img style="background-color:#FF0B67" src="dosyalar/logo.png" /></a>

        </div>
    </header>
    <form id="form1" runat="server">
        <div style="height:50px;"></div>
        <div style="margin:auto;" class="auto-style45">
            
            <table class="auto-style36">
                <tr>
                    <td class="auto-style42"></td>
                    <td class="auto-style38">
                        <asp:Panel ID="Panel1" runat="server">
                        </asp:Panel>
                        <br />
              <asp:Button ID="Button3" runat="server" Text="Rezervasyon Yap" BackColor="#49BFD2" BorderStyle="None" Font-Bold="True" ForeColor="White" Height="40px" OnClick="Button3_Click" Width="197px" Font-Size="20px" CssClass="textalan" />
                    </td>
                    <td class="auto-style37"></td>
                </tr>
                <tr>
                    <td class="auto-style52">Filmin&nbsp; Adı:</td>
                    <td class="auto-style53">
                        <asp:Literal ID="Literal1" runat="server"></asp:Literal>
                    </td>
                    <td class="auto-style54"></td>
                </tr>
                <tr>
                    <td class="auto-style55">Film Türü:</td>
                    <td class="auto-style56">
                        <asp:Literal ID="Literal2" runat="server"></asp:Literal>
                    </td>
                    <td class="auto-style57"></td>
                </tr>
                <tr>
                    <td class="auto-style55">Film Süresi:</td>
                    <td class="auto-style56">
                        <asp:Literal ID="Literal3" runat="server"></asp:Literal>
                    </td>
                    <td class="auto-style57"></td>
                </tr>
                <tr>
                    <td class="auto-style58">Oyuncular:</td>
                    <td class="auto-style59">
                        <asp:Literal ID="Literal4" runat="server"></asp:Literal>
                    </td>
                    <td class="auto-style60"></td>
                </tr>
                <tr>
                    <td class="auto-style61">Yönetmen:</td>
                    <td class="auto-style62">
                        <asp:Literal ID="Literal5" runat="server"></asp:Literal>
                    </td>
                    <td class="auto-style63"></td>
                </tr>
                <tr>
                    <td class="auto-style64">Vizyon Tarihi:</td>
                    <td class="auto-style65">
                        <asp:Literal ID="Literal6" runat="server"></asp:Literal>
                    </td>
                    <td class="auto-style66"></td>
                </tr>
                <tr>
                    <td class="auto-style49">Açıklama:</td>
                    <td class="auto-style50">
                        <asp:Literal ID="Literal7" runat="server"></asp:Literal>
                    </td>
                    <td class="auto-style51"></td>
                </tr>
            </table>
            
        </div>
    </form>
</body>
</html>
