<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="filmler.aspx.cs" Inherits="SinemaRezervasyon.filmler" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link href="stil.css" rel="stylesheet" />
    <title></title>
</head>
<body>
     <header>
        <div style="background-color:#FF0B67" class="auto-style1">
            <a href="index.aspx"><img style="background-color:#FF0B67" src="dosyalar/logo.png" /></a>

        </div>
    </header>
    <form id="form1" runat="server">
        <div style="height:50px; color: #808080; font-weight: bold; font-size: 25px;">

            <br />
            FİLMLER</div>
        <div style="width:80%;margin:auto;">

            <asp:Panel ID="Panel1" runat="server">
            </asp:Panel>

        </div>
    </form>
</body>
</html>
