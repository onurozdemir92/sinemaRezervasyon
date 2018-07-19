<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="rezervasyon.aspx.cs" Inherits="SinemaRezervasyon.rezervasyon" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link href="stil.css" rel="stylesheet" />
    <title>Bilet Rezervasyon</title>
    
    <style type="text/css">
        .auto-style36 {
            height: 300px;
            width:1003px;
            margin-top:100px;
            margin-left: auto;
            margin-right: auto;
            margin-bottom: auto;
        }
        .auto-style37 {
            width: 100%;
            height: 261px;
        }
        .auto-style38 {
            height: 32px;
        }
        .auto-style49 {
            margin-left: 0;
        }
        .auto-style50 {
            width: 45px;
        }
        .auto-style51 {
            width: 589px;
        }
        .auto-style52 {
            width: 100%;
        }
        .auto-style57 {
            height: 69px;
        }
        .auto-style63 {
            width: 636px;
            height: 31px;
        }
        .auto-style64 {
            height: 31px;
        }
        .auto-style65 {
            height: 31px;
            width: 166px;
        }
        .auto-style69 {
            height: 24px;
            width: 166px;
        }
        .auto-style70 {
            width: 636px;
            height: 24px;
        }
        .auto-style71 {
            height: 24px;
        }
        .auto-style77 {
            width: 100%;
            height: 314px;
        }
        .auto-style83 {
            height: 54px;
        }
        .auto-style85 {
            width: 200px;
            height: 300px;
        }
        .auto-style86 {
            height: 69px;
            width: 411px;
        }
        .auto-style92 {
            height: 69px;
            width: 375px;
        }
        .auto-style99 {
            height: 77px;
            width: 411px;
        }
        .auto-style100 {
            height: 77px;
            width: 375px;
        }
        .auto-style102 {
            height: 66px;
            width: 411px;
        }
        .auto-style103 {
            height: 66px;
            width: 375px;
        }
        .auto-style105 {
            height: 77px;
        }
        .auto-style107 {
            height: 66px;
        }
        .auto-style108 {
            margin-top: 0;
        }
        .auto-style109 {
            height: 10px;
            width: 166px;
        }
        .auto-style110 {
            width: 636px;
            height: 10px;
        }
        .auto-style111 {
            height: 10px;
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
        <div  class="auto-style36">
            <asp:MultiView ID="MultiView1" runat="server" OnActiveViewChanged="MultiView1_ActiveViewChanged">
                <asp:View ID="View1" runat="server">
                    <table class="auto-style37">
                        <tr>
                            <td class="auto-style50">&nbsp;</td>
                            <td class="auto-style51" style="text-align: center; font-size: 30px;">
                                Film Seç:&nbsp;&nbsp;&nbsp;
                                <asp:DropDownList ID="DropDownList1" runat="server" Height="56px" Width="211px" AutoPostBack="True" Font-Size="20px">
                                </asp:DropDownList>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Button ID="Button1" runat="server" BackColor="#434344" BorderStyle="None" Font-Size="15px" ForeColor="White" Height="50px" OnClick="Button1_Click" Text="Seans Seç" Width="100px" />
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style50" rowspan="4">&nbsp;</td>
                            <td class="auto-style51" rowspan="4">
                                <asp:DataList ID="DataList1" runat="server" RepeatColumns="4" RepeatDirection="Horizontal" CssClass="auto-style49" Width="965px">
                                    <ItemTemplate>
                                        &nbsp;&nbsp;
                                       <center> <asp:Image ID="Image1" runat="server" Height="212px" ImageUrl='<%# Eval("afislink") %>' Width="153px" /></center>
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                                        <br />
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <center><asp:Literal ID="Literal1" runat="server" Text='<%# Eval("filmadi") %>'></asp:Literal></center>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        <br />
                                    </ItemTemplate>
                                </asp:DataList>
                            </td>
                            <td class="auto-style38">
                            </td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                        </tr>
                    </table>
                  
                </asp:View>

                <asp:View ID="View2" runat="server">
                    <table class="auto-style77">
                        <tr>
                            <td class="auto-style86"></td>
                            <td class="auto-style92">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                            <td class="auto-style57">&nbsp;</td>
                            <td class="auto-style57"></td>
                        </tr>
                        <tr>
                            <td class="auto-style99" style="text-align: right; font-size: 40px;">Seans Seç: </td>
                            <td class="auto-style100">&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" Font-Size="40px" Height="56px" Width="189px">
                                </asp:DropDownList>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                            <td class="auto-style105">
                                <asp:Button ID="Button2" runat="server" BackColor="#434344" BorderStyle="None" Font-Size="15px" ForeColor="White" Height="50px" OnClick="Button2_Click" Text="Koltuk Seç" Width="100px" />
                            </td>
                            <td class="auto-style105"></td>
                        </tr>
                        <tr>
                            <td class="auto-style102" style="text-align: right; font-size: 40px;">&nbsp;</td>
                            <td class="auto-style103">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                            <td class="auto-style107">&nbsp;</td>
                            <td class="auto-style107"></td>
                        </tr>
                        <tr>
                            <td class="auto-style83" style="font-size: 40px;" colspan="4">
                                 <asp:DataList ID="DataList2" runat="server" RepeatColumns="4" RepeatDirection="Horizontal" CssClass="auto-style49" Width="879px">
                                    <ItemTemplate>
                                     <center>  <div style="background-color:#ff0076;border-radius:5px;" class="auto-style85"> 
                                           <br />
                                           <br />
                                           <asp:Label ID="Label3" runat="server" Font-Size="50px" ForeColor="White" Text='<%# Eval("saat") %>'></asp:Label>
                                           <br />
                                           <br />
                                           <asp:Image ID="Image2" runat="server" Height="72px" ImageUrl="dosyalar\\saat.png" Width="75px" />
                                           &nbsp;<br />
                                        </div></center>
                                   </ItemTemplate>
                                </asp:DataList>
                            </td>

                        </tr>
                    </table>
                </asp:View>
                <asp:View ID="View3" runat="server">
                    <table class="auto-style52">
                        <tr>
                            <td class="auto-style65" style="text-align: center">&nbsp;</td>
                            <td class="auto-style63" style="text-align: center; font-size: 20px">
                                &nbsp;</td>
                            <td class="auto-style64" style="text-align: center">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style65" style="text-align: center">Salon:</td>
                            <td class="auto-style63" style="text-align: center; font-size: 20px">
                                <asp:Label ID="Label1" runat="server" Font-Size="30px" ForeColor="#666666" Text="Label"></asp:Label>
                            </td>
                            <td class="auto-style64" style="text-align: center">
                                <asp:Button ID="Button4" runat="server" BackColor="#FC815C" BorderStyle="None" CssClass="auto-style108" Font-Bold="True" Font-Size="20px" ForeColor="White" Height="40px" OnClick="Button4_Click" Text="Film Değiştir" Width="197px" />
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style65" style="text-align: center">Seans:</td>
                            <td class="auto-style63" style="text-align: center; font-size: 20px">&nbsp;<asp:Label ID="Label4" runat="server" Font-Size="30px" ForeColor="#666666"></asp:Label>
                            </td>
                            <td class="auto-style64" style="text-align: center">
                                <asp:Button ID="Button5" runat="server" BackColor="#FC815C" BorderStyle="None" CssClass="auto-style108" Font-Bold="True" Font-Size="20px" ForeColor="White" Height="40px" OnClick="Button5_Click" Text="Seans Değiştir" Width="197px" />
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style69" style="text-align: center">Seçilen Koltuk:</td>
                            <td class="auto-style70">
                                <asp:ListBox ID="ListBox1" CssClass="listbox" runat="server" AutoPostBack="True" Height="81px" Width="154px"></asp:ListBox>
                            </td>
                            <td class="auto-style71" style="text-align: center">
                                <asp:Button ID="Button3" runat="server" BackColor="#49BFD2" BorderStyle="None" Font-Bold="True" Font-Size="20px" ForeColor="White" Height="40px" OnClick="Button3_Click" Text="REZERVE ET" Width="197px" />
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style65"></td>
                            <td class="auto-style63" style="text-align: center; font-size: 20px; background-color: #C0C0C0;">PERDE</td>
                            <td class="auto-style64" style="text-align: center"></td>
                        </tr>
                        <tr>
                            <td class="auto-style109"></td>
                            <td class="auto-style110" style="text-align: center; font-size: 20px; background-color: #FFFFFF;"></td>
                            <td class="auto-style111" style="text-align: center">
                                <br />
                                <br />
                                <br />
                            </td>
                        </tr>
                    </table>

                    <asp:Panel ID="Panel1" runat="server">
                    </asp:Panel>
                    <br />
                    <br />
                </asp:View>

                


            </asp:MultiView>
        </div>
    </form>
</body>
</html>
