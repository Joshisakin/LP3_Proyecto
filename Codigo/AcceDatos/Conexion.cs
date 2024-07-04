using System;
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
        public Conexion(string servidor, string usuario, string clave)
        {
            this.Base = "SistemaPortuario";
            this.Servidor = servidor;
            this.Usuario = usuario;
            this.Clave = clave;
            this.Seguridad = false;
        }

        public SqlConnection CrearConexion()
        {
            SqlConnection Cadena = new SqlConnection();
            try
            {
                Cadena.ConnectionString = "Server=" + this.Servidor + "; Database=" + this.Base + ";";
                if (this.Seguridad)
                {
                    Cadena.ConnectionString += "Integrated Security=SSPI";
                }
                else
                {
                    Cadena.ConnectionString += "User Id=" + this.Usuario + ";Password=" + this.Clave;
                }
            }
            catch (Exception ex)
            {
                Cadena = null;
                throw ex;
            }
            return Cadena;
        }

        public static Conexion getInstancia(string servidor, string usuario, string clave)
        {
            if (Con == null)
            {
                Con = new Conexion(servidor, usuario, clave);
            }
            return Con;
        }
    }
}