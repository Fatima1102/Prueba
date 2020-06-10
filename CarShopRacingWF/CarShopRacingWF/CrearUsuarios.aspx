<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="CrearUsuarios.aspx.cs" Inherits="CarShopRacingWF.CrearUsuarios" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            height: 32px;
        }
        .auto-style2 {
            height: 32px;
            width: 723px;
            text-align: right;
        }
        .auto-style3 {
            width: 723px;
            text-align: right;
        }
        ·Content2 {
            display:flex;
            justify-content:center;
        }
    </style>
    <link href="Css/Estil.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="Css/estilo.css" rel="stylesheet" />
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <table class="w-100">
        <tr>
            <td class="text-center" colspan="2">Crear Usuario</td>
        </tr>
        <tr>
            <td class="auto-style2">Usuario:</td>
            <td class="auto-style1">
                <asp:TextBox ID="txtUsuario" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">Contraseña:</td>
            <td>
                <asp:TextBox ID="txtPasword" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">Rol:</td>
            <td>
                <asp:DropDownList ID="ddlRol" runat="server">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">Estado:</td>
            <td>
                <asp:CheckBox ID="cbEstado" runat="server" Text="Activo" />
            </td>
        </tr>
        <tr>
            <td class="auto-style3">
                <asp:Button ID="btnAgregar" class="btn btn-success" runat="server" OnClick="btnAgregar_Click" Text="Agregar" />
            </td>
            <td>
                <asp:Button ID="btnCancelar" CssClass="btn btn-warning" runat="server" Text="Cancelar" />
            </td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td>
                <asp:Label ID="lblMensaje" runat="server"></asp:Label>
            </td>
        </tr>
    </table>

    <script src="Scripts/jquery-3.5.1.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
</asp:Content>
