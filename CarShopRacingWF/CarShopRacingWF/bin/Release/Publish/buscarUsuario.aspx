<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="buscarUsuario.aspx.cs" Inherits="CarShopRacingWF.buscarUsuario" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            text-align: center;
        }
        .auto-style4 {
            width: 682px;
            text-align: right;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style2" colspan="2">Busqueda De Usuarios</td>
            </tr>
            <tr>
                <td class="auto-style4">Seleccione un usuario:</td>
                <td>
                    <asp:DropDownList ID="ddlUsuario" runat="server" Height="24px" Width="400px">
                    </asp:DropDownList>
                    <asp:Button ID="btnMostar" runat="server" Text="Mostrar Usuarios" />
                </td>
            </tr>
            <tr>
                <td class="auto-style4">Seleccione un rol:</td>
                <td>
                    <asp:DropDownList ID="ddlrol" runat="server" Height="24px" Width="400px">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td><strong>Mostrar:</strong>
                    <asp:RadioButton ID="rbActivos" runat="server" Text="Activos" />
                    <asp:RadioButton ID="rbInactivos" runat="server" Text="Inactivos" />
                    <asp:RadioButton ID="rbTodos" runat="server" Text="Todos" />
                </td>
            </tr>
            <tr>
                <td class="auto-style2" colspan="2">
                    <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical">
                        <AlternatingRowStyle BackColor="#DCDCDC" />
                        <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                        <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                        <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                        <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#F1F1F1" />
                        <SortedAscendingHeaderStyle BackColor="#0000A9" />
                        <SortedDescendingCellStyle BackColor="#CAC9C9" />
                        <SortedDescendingHeaderStyle BackColor="#000065" />
                    </asp:GridView>
                </td>
            </tr>
        </table>
        <div>
        </div>
    </form>
</body>
</html>
