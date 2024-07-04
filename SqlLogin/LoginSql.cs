using System;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Windows.Forms;
using AcceDatos;
using Interfaz;
namespace Interfaz
{
    public partial class LoginSql : Form
    {
        public LoginSql()
        {
            InitializeComponent();
        }

        private void Login_Load(object sender, EventArgs e)
        {
            MessageBox.Show("Ingrese su Conexion a Sql");
            ListarInstanciasSQL();
        }

        private void btnIngreso_Click(object sender, EventArgs e)
        {
            string servidor = comboBox1.SelectedItem.ToString();
            string usuario = txtUsuario.Text;
            string clave = txtContraseña.Text;
            Configuracion.Servidor = servidor;
            Configuracion.Usuario = usuario;
            Configuracion.Clave = clave;
            Conexion conexion = Conexion.getInstancia(servidor, usuario, clave);
            try
            {
                using (SqlConnection conn = conexion.CrearConexion())
                {
                    conn.Open();
                    MessageBox.Show("Conexión exitosa");
                    this.Hide();
                    LoginMain frm = new LoginMain();
                    frm.Show();
                    frm.FormClosed += (s, args) => this.Close();
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show("Error al conectar: " + ex.Message);
            }
        }

        private void ListarInstanciasSQL()
        {
            DataTable dataTable = SqlDataSourceEnumerator.Instance.GetDataSources();

            foreach (DataRow row in dataTable.Rows)
            {
                string instancia = row["InstanceName"].ToString();
                string servidor = row["ServerName"].ToString();
                if (string.IsNullOrEmpty(instancia))
                {
                    comboBox1.Items.Add(servidor);
                }
                else
                {
                    comboBox1.Items.Add(servidor + "\\" + instancia);
                }
            }
        }

        private void txtUsuario_TextChanged(object sender, EventArgs e)
        {
            // No es necesario implementar nada aquí si no se requiere
        }
    }
}
