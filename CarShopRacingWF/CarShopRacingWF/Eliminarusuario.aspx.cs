using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CarShopRacingWF
{
    public partial class Eliminarusuario : System.Web.UI.Page
    {
        DataSet dsP = new DataSet();
        DataSet ds = new DataSet();
        ServiceReference2.Service1Client ws = new ServiceReference2.Service1Client();
        //ServiceReference1.Service1Client ws = new ServiceReference1.Service1Client();
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!Page.IsPostBack)
            {
                dsP = ws.ListarRol();
                ddlrol.DataSource = dsP.Tables[0];
                ddlrol.DataValueField = dsP.Tables[0].Columns[0].ColumnName;
                ddlrol.DataTextField = dsP.Tables[0].Columns[1].ColumnName;
                ddlrol.DataBind();
            }
        }

        protected void btnCancelar_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/IngresarUsuario.aspx");
        }

        protected void btnEliminar_Click(object sender, EventArgs e)
        {

        }

        protected void btnBuscar_Click(object sender, EventArgs e)
        {
            try
            {
                if (TxtIdUsuario.Text.Length == 0) TxtIdUsuario.Text = "0";

                ds = ws.BuscarUsuario(int.Parse(TxtIdUsuario.Text));//verificar al momento de eliminar creo q esos if no van xD
                if (ds != null)
                {
                    if (ds.Tables.Count > 0)
                    {
                        if (ds.Tables[0].Rows.Count > 0)
                        {
                            if (ds.Tables[0].Rows[0][0].ToString() != "-1")
                            {

                                TxtIdUsuario.Text = ds.Tables[0].Rows[0][0].ToString();
                                TxtUsuario.Text = ds.Tables[0].Rows[0][1].ToString();
                                txtPasword.Text = ds.Tables[0].Rows[0][2].ToString();
                                ddlrol.Text = ds.Tables[0].Rows[0]["IdRol"].ToString();
                                ckbEstado.Checked = bool.Parse(ds.Tables[0].Rows[0]["Estado"].ToString());
                            }
                            else
                                lblMensaje.Text = "Control no encontrado!";
                        }
                        else
                            lblMensaje.Text = "Sin registros!";
                    }
                    else
                        lblMensaje.Text = "Sin datos!";
                }
                else
                    lblMensaje.Text = "Error en la consulta!";
            }
            catch (Exception ex)
            {
                lblMensaje.Text = ex.Message;
            }
        }
    }
}