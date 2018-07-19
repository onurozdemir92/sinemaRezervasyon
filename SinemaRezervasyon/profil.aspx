<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="profil.aspx.cs" Inherits="SinemaRezervasyon.profil" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link href="stil.css" rel="stylesheet" />
    <title>Profil</title>
</head>
<body>
     <header>

    </header>
    
    <form id="form1" runat="server">
        <div style="float:left;height:350px;margin-top:50px;width:15%;background-color:dimgray;border-radius:3px;margin-left:50px;color:white;font-weight:bold;background-color:#A09D9D;">

            <br />
            <asp:Panel ID="Panel1" runat="server">
            </asp:Panel>
            <br />
            Adı:<asp:Literal ID="Literal1" runat="server"></asp:Literal>
            <br />
            <br />
            Soyadı:<asp:Literal ID="Literal2" runat="server"></asp:Literal>
            <br />
            <br />
            Doğum Tarihi:<asp:Literal ID="Literal3" runat="server"></asp:Literal>
            <br />
            <br />
            Cinsiyet:<asp:Literal ID="Literal4" runat="server"></asp:Literal>

            <br />
            <br />

        </div>
        <div style="float:left;margin-top:50px;margin-left:50px;height:350px;min-height:300px;width:70%;background-color:#a2d8da;border-radius:5px;">
        

            <asp:ScriptManager ID="ScriptManager1" runat="server">
            </asp:ScriptManager>
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
                    <asp:Panel ID="Panel2" runat="server">
            </asp:Panel>
                    <asp:Timer runat="server" Interval="1" OnTick="Unnamed1_Tick">
                    </asp:Timer>
                </ContentTemplate>
            </asp:UpdatePanel>
        
            <div style="margin-top:90px;"><a  href="ayarlar.aspx"><div  class="profdiv" style="float:left;width:150px;height:200px;background-color:white;margin:auto;margin-left:35%;font-weight:bold;border-radius:3px;color:#828587;">
                <br />
                <br />
                <br />
                <br />
               
                AYARLAR</div></a><a href="biletler.aspx"><div class="profdiv" style="float:left; width:150px;height:200px;background-color:white;margin-left:15px;font-weight:bold;border-radius:3px;color:#828587;">
                    <br />
                    <br />
                    <br />
                    <br />
                    
                    BİLETLERİM</div></a></div>
            
        </div>
    </form>
</body>
</html>
