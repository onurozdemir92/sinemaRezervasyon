<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="biletler.aspx.cs" Inherits="SinemaRezervasyon.biletler" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="stil.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style36 {
            width: 100%;
        }
        .auto-style37 {
            height: 127px;
        }
        .auto-style38 {
            margin-left: 79px;
        }
        .auto-style39 {
            width: 49px;
        }
        .auto-style40 {
            height: 127px;
            width: 49px;
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
        <div style="margin-top:50px;">
            <table class="auto-style36">
                <tr>
                    <td class="auto-style39">&nbsp;</td>
                    <td colspan="2">REZERVASYON YAPILAN BİLETLER:<asp:Literal ID="Literal1" runat="server"></asp:Literal>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style40"></td>
                    <td class="auto-style37" colspan="2">
                        <asp:GridView ID="GridView1" runat="server" CssClass="auto-style38" Width="1049px" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="Kimlik" ForeColor="Black" GridLines="Horizontal" OnRowDeleting="GridView1_RowDeleting">
                            <Columns>
                                <asp:BoundField DataField="saat" HeaderText="Seans" />
                                <asp:BoundField DataField="filmadi" HeaderText="Film" />
                                <asp:BoundField DataField="salonadi" HeaderText="Salon" />
                                <asp:BoundField DataField="koltukno" HeaderText="Koltuk" />
                                <asp:CommandField DeleteText="İptal Et" HeaderText="İptal" ShowDeleteButton="True" />
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
                    <td class="auto-style37"></td>
                </tr>
                <tr>
                    <td class="auto-style39">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style39">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
