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
    public partial class InicioSeccion : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btIngresar_Click(object sender, EventArgs e)
        {
            string usuario = txUser.Value;
            string contrasenia = txContraseniaInicio.Value;
            string Documento = "";
            string ContraseniaDB = "";
            try
            {
                //XXXXX Nombre de conecction
                //BBBBB Nombre Tabla Base de Datos
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["XXXXXX"].ConnectionString);
                string strSQL = "SELECT NumeroDocumento,Contrasenia FROM BBBBBB WHERE NumeroDocumento ='" + usuario + "'";
                SqlCommand com = new SqlCommand(strSQL, con);
                con.Open();
                SqlDataReader reader = com.ExecuteReader();
                if (reader.Read())
                {
                    Documento = reader.GetString(0);
                    ContraseniaDB = reader.GetString(1);
                }
                con.Close();
            }
            catch (Exception ex)
            {

            }
            if (Documento == usuario && ContraseniaDB == contrasenia && Documento != "")
            { 
                Response.Redirect("PerfilUsuario.aspx?valor=" + usuario);
            }
            else
            {
                ClientScript.RegisterStartupScript(GetType(), "id", "validar_inicio()", true);
            }
        }

        protected void btSalir_Click(object sender, EventArgs e)
        {
            Response.Redirect("InicioSeccion.aspx");
        }
    }
}