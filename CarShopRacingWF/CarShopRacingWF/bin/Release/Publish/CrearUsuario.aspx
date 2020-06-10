<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="CrearUsuario.aspx.cs" Inherits="CarShopRacingWF.CrearUsuario" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="Css/estilo2.css" rel="stylesheet" />
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
      
    <div class="container well contenedor e">
        <div class="row">
            <div class="col-xs-12 espa">
                <h2>Crear Usuario </h2>
            </div>
        </div>
        <div id="form1" class="form-horizontal">
            <div class="form-group">
                <asp:Label ID="lblUsuario" runat="server" Text="Usuario" CssClass="control-label col-sm-2"></asp:Label>
                <div class="col-sm-10">
                    <asp:TextBox ID="txtUsuario" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
            </div>

            <div class="form-group">
                <asp:Label ID="lblcontra" runat="server" Text="Contraseña" CssClass="control-label col-sm-2"></asp:Label>
                <div class="col-sm-10">
                    <asp:TextBox ID="txtPasword" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
            </div>
            <div class="form-group">
                <asp:Label ID="Label1" runat="server" Text="Rol" CssClass="control-label col-sm-2"></asp:Label>
                <div class="col-sm-10">
                    <asp:DropDownList ID="ddlRol" CssClass="form-control" runat="server">
                    </asp:DropDownList>
                </div>
            </div>
            

            <div class="form-check form-group">
                <div class="col-sm-10">
                    <asp:CheckBox ID="cbEstado" CssClass="form-check-input" runat="server" Text="Activo" Checked="false" />
                    <%--<asp:Label ID="Label3" runat="server" Text="" CssClass="form-check-label" for="materialChecked2"></asp:Label>--%>
                </div>


            </div>
            <br />
            <br />

            <div class="form-group row">
                <%--  tt--%>
                <div class="col-sm-6 ">
                    <asp:Button ID="Button2" runat="server" Text="Iniciar" CssClass="form-control btn btn-primary" OnClick="Button2_Click" />
                </div>
                <div class="col-sm-6">
                    <asp:Button ID="btnCancelar" runat="server" Text="Cancelar" CssClass="form-control btn btn-danger" OnClick="btnCancelar_Click1"  />
                </div>
            </div>

            <div class="form-group">
                <div class="col-sm-10">
                    <asp:Label ID="lblMensaje" runat="server" Text="" CssClass="control-label col-sm-2"></asp:Label>
                </div>
            </div>

        </div>
    </div>
   
    <script src="Scripts/jquery-3.5.1.min.js"></script>
    <script src="Scripts/bootstrap.bundle.min.js"></script>
</asp:Content>
