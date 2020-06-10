<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MenuAdmin.aspx.cs" Inherits="CarShopRacingWF.MenuAdmin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
        .auto-style3 {
            width: 85%;
            height: 632px;
            margin-left: 108px;
            margin-top: 4px;
        }
        .auto-style5 {
            width: 391px;
        }
        .auto-style6 {
            width: 623px;
        }
        .auto-style7 {
            width: 84px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1 class="auto-style1">
                Admin</h1>
            <table class="auto-style3">
                <tr>
                    <td class="auto-style5">
                        <asp:Menu ID="Menu1" runat="server" ForeColor="#003300" Height="520px">
                            <Items>
                                <asp:MenuItem NavigateUrl="~/IngresarUsuario.aspx" Text="Usuarios" Value="Usuarios"></asp:MenuItem>
                                <asp:MenuItem Text="Carros" Value="Carros"></asp:MenuItem>
                                <asp:MenuItem Text="Empleados" Value="Empleados"></asp:MenuItem>
                                <asp:MenuItem Text="Ventas" Value="Ventas"></asp:MenuItem>
                                <asp:MenuItem Text="Facturas" Value="Facturas"></asp:MenuItem>
                            </Items>
                        </asp:Menu>
                    </td>
                    <td class="auto-style6">&nbsp;</td>
                    <td class="auto-style7">
                        <asp:Image ID="Image1" runat="server" ImageUrl="~/Imagenes/Menu.jpeg" />
                    </td>
                </tr>
            </table>
            <p class="auto-style1">
                &nbsp;</p>
            <p class="auto-style1">
                &nbsp;</p>
        </div>
    </form>
</body>
</html>
