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

        protected void btRegistrar_Click(object sender, EventArgs e)
        {
            string Usuario = txUser.Value;
            string tipoDocumento = dlTipoDoc.Text;
            string Documento = txIdentificacion.Value;
            string Nombre = txNombre.Value;
            string Apellido = txApellido.Value;
            string Correo = txCorreo.Value;
            string Correo2 = txCorreo2.Value;
            string Contrasena = txContra.Value;
            string Contrasena2 = txContra2.Value;
            Documento = Documento.Replace(".", string.Empty);

            if (Usuario != "" && tipoDocumento != "" && Documento != "" && Nombre != "" && Apellido != "" && Correo != "" && Contrasena != "" && Correo == Correo2 && Contrasena == Contrasena2)
            {
                try
                {
                    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["claquetaConnectionString"].ConnectionString);
                    string strSQL = "INSERT INTO registro VALUES ('" + Usuario + "','" + tipoDocumento + "','" + Documento + "','"
                        + Nombre + "','" + Apellido + "','"
                        + Correo + "','" + Contrasena + "')";
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
            txUser.Value = String.Empty;
            txIdentificacion.Value = String.Empty;
            txNombre.Value = String.Empty;
            txApellido.Value = String.Empty;
            txCorreo.Value = String.Empty;
            txCorreo2.Value = String.Empty;
            txContra.Value = String.Empty;
            txContra2.Value = String.Empty;
        }
    }
    
}