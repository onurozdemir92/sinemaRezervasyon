<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="sayfa.aspx.cs" Inherits="SinemaRezervasyon.sayfa" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link href="stil.css" rel="stylesheet" />
    <title>SAYFA</title>
</head>
<body>
    <header>
        <div class="auto-style1">
            &nbsp;<a href="index.aspx"><img src="dosyalar/logo.png" /></a>

        </div>
    </header>
    <form id="form1" runat="server">
        <div style="float:left; width:150px; height:auto;margin-top:50px;">

            <asp:Panel ID="Panel1" runat="server">
            </asp:Panel>

        </div>
        <div style="float:left; margin-left:200px;margin-top:50px;height:auto;width:auto;">
            <asp:Panel ID="Panel2" runat="server">
            </asp:Panel>
        </div>
    </form>
</body>
</html>
