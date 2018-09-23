using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace Calqueta.Modulos
{
    public partial class Registro : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btIngresar_Click(object sender, EventArgs e)
        {
            //Cambiar de acuerdo a los datos de la base de datos
            string tipoDocumento = txTipoDocumento.Text;
            string Documento = txDocumento.Value;
            string Nombre = txNombre.Value;
            string SegundoNombre = txSegundoNombre.Value;
            string Apellido = txApellido.Text;
            string SegundoApellido = txSegundoApellido.Text;
            string Correo = txCorreo.Value;
            string Correo2 = txCorreo2.Value;
            string Contrasenia = txContrasenia.Value;
            string Contrasenia2 = txContrasenia2.Value;
            Documento = Documento.Replace(".", string.Empty);

            if (tipoDocumento != "" && Documento != "" && Nombre != "" && Apellido != "" && Correo != "" && Contrasenia != "" && Correo == Correo2 && Contrasenia == Contrasenia2)
            {
                try
                {

                    //XXXX Nombre conecciom
                    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["XXXXX"].ConnectionString);
                    //BBBBB Nombre Tabla
                    string strSQL = "INSERT INTO BBBBB VALUES ('" + tipoDocumento + "','" + Documento + "','"
                        + Nombre + "','" + SegundoNombre + "','" + Apellido + "','" + SegundoApellido + "','"
                        + Correo + "','" + Contrasenia + "')";
                    SqlCommand com = new SqlCommand(strSQL, con);
                    con.Open();
                    com.ExecuteNonQuery();
                    con.Close();
                }
                catch (Exception ex)
                {

                }
                vaciarCasillas();
            }
        }

        protected void vaciarCasillas()
            {
                txDocumento.Value = "";
                txNombre.Value = "";
                txSegundoNombre.Value = "";
                txApellido.Text = "";
                txSegundoApellido.Text = "";
                txCorreo.Value = "";
                txCorreo2.Value = "";
                txContrasenia.Value = "";
                txContrasenia2.Value = "";
            }

        protected void btSalir_Click(object sender, EventArgs e)
        {
            Response.Redirect("Estrenos.aspx");
        }
    }

}