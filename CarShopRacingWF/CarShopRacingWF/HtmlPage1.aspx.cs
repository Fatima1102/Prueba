using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace bootstrapwebform
{
    public partial class HtmlPage1 : System.Web.UI.Page
    {
        DataSet ds = new DataSet();
        CarShopRacingWF.ServiceReference2.Service1Client ws = new CarShopRacingWF.ServiceReference2.Service1Client();
        //CarShopRacingWF.ServiceReference1.Service1Client ws = new CarShopRacingWF.ServiceReference1.Service1Client();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnIniciar_Click(object sender, EventArgs e)
        {
            try
            {
                //Se valida que el usuario y contraseña se hayan ingresado
                if (txtUSuario.Text.Length == 0)
                {
                    lblMensaje.Text = "Usuario no puede estar vacío!";
                    return;
                }
                if (txtContra.Text.Length != 0)
                    ds = ws.ValidarUsuario(txtUSuario.Text, txtContra.Text);
                if (ds != null)//Se valida si trae datos
                {
                    if (ds.Tables.Count > 0)//Se valida si trae un DataTable
                    {
                        if (ds.Tables[0].Rows.Count > 0)//Si trae Registros
                        {
                            if (ds.Tables[0].Rows[0][0].ToString() != "-1")//Si el usuario existe
                            {
                                if (!bool.Parse(ds.Tables[0].Rows[0]["Estado"].ToString()))
                                {

                                    lblMensaje.Text = "El usuario está inactivo!";
                                    return;
                                }

                                if (int.Parse(ds.Tables[0].Rows[0]["IdRol"].ToString()) == 1)
                                {
                                    lblMensaje.Text = "Bienvenido al Sistema " + ds.Tables[0].Rows[0][1].ToString();
                                    Session["Username"] = txtUSuario.Text;
                                    Session["IdUsuario"] = ds.Tables[0].Rows[0]["IdUsuario"].ToString();
                                    Session["IdRol"] = ds.Tables[0].Rows[0]["IdRol"].ToString();
                                    Response.Redirect("~/MenuPrincipal.aspx");
                                }
                                else if (int.Parse(ds.Tables[0].Rows[0]["IdRol"].ToString()) == 2)
                                {
                                    Response.Redirect("~/MenuEmpleado.aspx");
                                }
                                else
                                    Response.Redirect("~/Login.aspx");
                            }
                            else
                            {
                                lblMensaje.Text = "Usuario o contraseña incorrectos!";
                                Session["Nombre"] = null;
                                Session["Username"] = null;
                                Session["IdUsuario"] = null;
                                Session["Rol"] = null;
                            }
                        }
                        else
                            lblMensaje.Text = "Sin registros!";
                    }
                    else
                        lblMensaje.Text = "Error en extracción de datos!";
                }
                else
                    lblMensaje.Text = "Error en ejecución de la consulta!";

            }
            catch (Exception ex)
            {
                lblMensaje.Text = ex.Message;
            }
        }
    }
}