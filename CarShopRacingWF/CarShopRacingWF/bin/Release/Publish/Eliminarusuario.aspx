<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Eliminarusuario.aspx.cs" Inherits="CarShopRacingWF.Eliminarusuario" %>

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
        .auto-style3 {
            text-align: right;
        }
        .auto-style4 {
            text-align: left;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style2" colspan="2">
                    <h2>Eliminar Usuario</h2>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="lb" runat="server" Text="IdUsuario"></asp:Label>
                </td>
                <td class="auto-style4">
                    <asp:TextBox ID="TxtIdUsuario" runat="server"></asp:TextBox>
                    <asp:Button ID="btnBuscar" runat="server" OnClick="btnBuscar_Click" Text="Buscar" />
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="Label2" runat="server" Text="Usuario:"></asp:Label>
                </td>
                <td class="auto-style4">
                    <asp:TextBox ID="TxtUsuario" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="Label3" runat="server" Text="Contraseña:"></asp:Label>
                </td>
                <td class="auto-style4">
                    <asp:TextBox ID="txtPasword" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Rol:</td>
                <td class="auto-style4">
                    <asp:DropDownList ID="ddlrol" runat="server">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="Label4" runat="server" Text="Estado:"></asp:Label>
                </td>
                <td class="auto-style4">
                    <asp:CheckBox ID="ckbEstado" runat="server" Text="Estado" />
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Button ID="btnEliminar" runat="server" OnClick="btnEliminar_Click" Text="Eliminar" />
                </td>
                <td class="auto-style4">
                    <asp:Button ID="btnCancelar" runat="server" OnClick="btnCancelar_Click" Text="Cancelar" />
                </td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style4">
                    <asp:Label ID="lblMensaje" runat="server"></asp:Label>
                </td>
            </tr>
        </table>
        <div>
        </div>
    </form>
</body>
</html>
