<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EditarUsuario.aspx.cs" Inherits="CarShopRacingWF.EditarUsuario" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style4 {
            width: 371px;
            height: 26px;
            text-align: right;
        }
        .auto-style3 {
            width: 371px;
            text-align: right;
        }
        .auto-style6 {
            text-align: center;
            margin-left: 305px;
        }
        .auto-style7 {
            width: 405px;
            height: 26px;
            text-align: left;
        }
        .auto-style8 {
            width: 405px;
            text-align: left;
        }
        .auto-style9 {
            height: 26px;
            text-align: center;
        }
        .auto-style1 {
            text-align: center;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <br />
            <br />
            <br />
            <br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <table class="auto-style6">
                <tr>
                    <td class="auto-style9" colspan="2">
            <h1 class="auto-style1">Editar Usuario</h1>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <asp:Label ID="Label6" runat="server" Text="IdUsuario"></asp:Label>
                    </td>
                    <td class="auto-style7">
                        <asp:TextBox ID="txtIdUsuario" runat="server"></asp:TextBox>
                        <asp:Button ID="btnBuscar" runat="server" OnClick="btnBuscar_Click" Text="Buscar" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <asp:Label ID="Label1" runat="server" Text="Username:"></asp:Label>
                    </td>
                    <td class="auto-style7">
                        <asp:TextBox ID="txtUsuario1" runat="server" Width="265px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:Label ID="Label2" runat="server" Text="Password:"></asp:Label>
                    </td>
                    <td class="auto-style8">
                        <asp:TextBox ID="txtPassword1" runat="server" Width="265px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <asp:Label ID="Label4" runat="server" Text="Rol:"></asp:Label>
                    </td>
                    <td class="auto-style7">
                        <asp:DropDownList ID="ddlRol1" runat="server" Height="16px" Width="201px">
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:Label ID="Label5" runat="server" Text="Estado:"></asp:Label>
                    </td>
                    <td class="auto-style8"><strong>
                        <asp:CheckBox ID="chkEstado1" runat="server" Text="Activo" />
                        </strong></td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:Button ID="BtnEditar1" runat="server" Text="Editar" OnClick="BtnEditar1_Click" />
                    </td>
                    <td class="auto-style8">
                        <asp:Button ID="BtnCancelar1" runat="server" Text="Cancelar" OnClick="BtnCancelar1_Click" />
                        <asp:Label ID="lblMensaje1" runat="server"></asp:Label>
                    </td>
                </tr>
            </table>
        &nbsp;</div>
    </form>
</body>
</html>
