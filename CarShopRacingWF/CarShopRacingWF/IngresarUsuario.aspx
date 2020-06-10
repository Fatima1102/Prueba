<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="IngresarUsuario.aspx.cs" Inherits="CarShopRacingWF.IngresarUsuario" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
        .auto-style2 {
            width: 88%;
            margin-left: 105px;
        }
        .auto-style3 {
            width: 352px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2 class="auto-style1">
                <br />
                Mantenimiento Usuario<br />
                <br />
                <br />
                <table class="auto-style2">
                    <tr>
                        <td class="auto-style3">
                            <asp:Menu ID="Menu1" runat="server" ForeColor="Black">
                                <Items>
                                    <asp:MenuItem NavigateUrl="~/AgregarUsuario.aspx" Text="Ingresar Usuario" Value="Ingresar Usuario"></asp:MenuItem>
                                    <asp:MenuItem Text="Editar Usuario" Value="Editar Usuario" NavigateUrl="~/EditarUsuario.aspx"></asp:MenuItem>
                                    <asp:MenuItem Text="Eliminar Usuario" Value="Eliminar Usuario" NavigateUrl="~/Eliminarusuario.aspx"></asp:MenuItem>
                                    <asp:MenuItem Text="Buscar Usuario" Value="Buscar Usuario"></asp:MenuItem>
                                    <asp:MenuItem NavigateUrl="~/MenuAdmin.aspx" Text="Menu Principal" Value="Menu Principal"></asp:MenuItem>
                                </Items>
                            </asp:Menu>
                        </td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                </table>
                <br />
            </h2>
        </div>
    </form>
</body>
</html>
