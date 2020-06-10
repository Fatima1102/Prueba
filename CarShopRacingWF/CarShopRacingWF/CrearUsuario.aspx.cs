using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CarShopRacingWF
{
    public partial class CrearUsuario : System.Web.UI.Page
    {
        DataSet ds = new DataSet();
        DataSet dsP = new DataSet();
        //ServiceReference1.Service1Client ws = new ServiceReference1.Service1Client();
        ServiceReference2.Service1Client ws = new ServiceReference2.Service1Client();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                dsP = ws.ListarRol();//Se carga el DataSet con la información de los privilegios actualizados de la BD
                ddlRol.DataSource = dsP.Tables[0];//Se asigna el origen de datos DataTable de los privilegios al DDL
                ddlRol.DataValueField = dsP.Tables[0].Columns[0].ColumnName;//Se asigna cuál es el campo del valor asociado al DDL (IdPrivilegio)
                ddlRol.DataTextField = dsP.Tables[0].Columns[1].ColumnName;//Se asigna el campo que se va a mostrar en el DDL (NombrePrivilegio)
                ddlRol.DataBind();//Refresca la información del DDL y hace que se vea en el form

            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
         
            //bool rt = cbEstado.Checked;
            try
            {
                ds = ws.InsertarUsuario(txtUsuario.Text, txtPasword.Text, int.Parse(ddlRol.SelectedValue), cbEstado.Checked);
                if (ds != null)
                    lblMensaje.Text = "Registro agregado Id=" + ds.Tables[0].Rows[0][0].ToString();
                else
                    lblMensaje.Text = "Error en la ejecución del proceso para agregar el registro, validar si la Empresa ya existe!";
            }
            catch (Exception ex)
            {
                lblMensaje.Text = ex.Message;
            }
        }

      
        protected void btnCancelar_Click1(object sender, EventArgs e)
        {
            Response.Redirect("~/MenuPrincipall.aspx");
        }
    }
}



