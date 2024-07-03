using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;

namespace AcceDatos
{
public class Conexion
    {
        private String Base;
        private String Servidor;
        private String Usuario;
        private String Clave;
        private bool Seguridad;
        private static Conexion Con = null;
        private Conexion()
        {
            this.Base = "SistemaPortuario";//El nombre por defecto de la base de datos sera "SistemaPortuario"
            this.Servidor = "BITRO\\SQLEXPRESS";
            this.Usuario = "sa";//tal vez estos valores deban ingresar por una interfaz
            this.Clave= "<77Warrior77>";
            this.Seguridad= false;
        }
        public SqlConnection CrearConexion()
        {
            SqlConnection Cadena = new SqlConnection();
            try
            {
                Cadena.ConnectionString = "Server=" + this.Servidor + "; Database=" + this.Base + ";";
                if(this.Seguridad)
                {
                    Cadena.ConnectionString = Cadena.ConnectionString + "Integrated Security = SSPI";
                }
                else
                {
                    Cadena.ConnectionString = Cadena.ConnectionString + "User Id=" + this.Usuario + ";Password=" + this.Clave;
                }
            }
            catch (Exception ex)
            {
                Cadena = null;
                throw ex;
            }
            return Cadena;
        }
        public static Conexion getInstancia()

        {
            if(Con==null)
            {
                Con=new Conexion();
            }
            return Con;
        }

    }
}
