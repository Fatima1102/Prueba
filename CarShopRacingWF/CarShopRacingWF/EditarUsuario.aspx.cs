using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CarShopRacingWF
{
    public partial class EditarUsuario : System.Web.UI.Page
    {
        DataSet dsP = new DataSet();
        DataSet ds = new DataSet();
        //ServiceReference1.Service1Client ws = new ServiceReference1.Service1Client();
        ServiceReference2.Service1Client ws = new ServiceReference2.Service1Client();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                dsP = ws.ListarRol();
                ddlRol1.DataSource = dsP.Tables[0];
                ddlRol1.DataValueField = dsP.Tables[0].Columns[0].ColumnName;
                ddlRol1.DataTextField = dsP.Tables[0].Columns[1].ColumnName;
                ddlRol1.DataBind();

            }
        }

       


        protected void BtnCancelar1_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/IngresarUsuario.aspx");
        }

        protected void BtnEditar1_Click(object sender, EventArgs e)
        {
            try
            {
                if (txtIdUsuario.Text.Length == 0) txtIdUsuario.Text = "0";
                ds = ws.EditarUsuario(int.Parse(txtIdUsuario.Text), txtUsuario1.Text,txtPassword1.Text,int.Parse(ddlRol1.SelectedValue), chkEstado1.Checked);
                if (ds != null)
                    lblMensaje1.Text = ds.Tables[0].Rows[0][0].ToString();
                else
                    lblMensaje1.Text = "Error en la ejecución del proceso para modificar el registro, validar si la Usuario ya existe!";
            }
            catch (Exception ex)
            {
                lblMensaje1.Text = ex.Message;
            }
        }

        protected void btnBuscar_Click(object sender, EventArgs e)
        {
            try
            {
                if (txtIdUsuario.Text.Length == 0) txtIdUsuario.Text = "0";

                ds = ws.BuscarUsuario(int.Parse(txtIdUsuario.Text));
                if (ds != null)
                {
                    if (ds.Tables.Count > 0)
                    {
                        if (ds.Tables[0].Rows.Count > 0)
                        {
                            if (ds.Tables[0].Rows[0][0].ToString() != "-1")
                            {

                                txtIdUsuario.Text = ds.Tables[0].Rows[0][0].ToString();
                                txtUsuario1.Text = ds.Tables[0].Rows[0][1].ToString();
                                txtPassword1.Text = ds.Tables[0].Rows[0][2].ToString();
                                ddlRol1.SelectedValue = ds.Tables[0].Rows[0][3].ToString();
                                chkEstado1.Checked = bool.Parse(ds.Tables[0].Rows[0]["Estado"].ToString());
                                
                            }
                            else
                                lblMensaje1.Text = "Control no encontrado!";
                        }
                        else
                            lblMensaje1.Text = "Sin registros!";
                    }
                    else
                        lblMensaje1.Text = "Sin datos!";
                }
                else
                    lblMensaje1.Text = "Error en la consulta!";
            }
            catch(Exception ex)
            {
                lblMensaje1.Text = ex.Message;
            }
        }
    }
}