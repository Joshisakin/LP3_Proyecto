using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using Reglas.Negocio;

namespace Interfaz.FrmChild.FrmxRol.Controlador.MdiChild.SubFrm
{
    public partial class AddRubro : Form
    {
        public AddRubro()
        {
            InitializeComponent();
        }

        private void btnConfirmar_Click(object sender, EventArgs e)
        {
            
        }

        private void AddRubro_Load(object sender, EventArgs e)
        {

        }
        private void MensajeError(string Mensaje)
        {
            MessageBox.Show(Mensaje, "Sistema de ventas", MessageBoxButtons.OK, MessageBoxIcon.Error);
        }
        private void MensajeOK(string Mensaje)
        {
            MessageBox.Show(Mensaje, "Sistema de ventas", MessageBoxButtons.OK, MessageBoxIcon.Information);
        }
        private void Limpiar()
        {
            txtRubro.Clear();
            ErrorIcono.Clear();
        }

        private void btnInsert_Click(object sender, EventArgs e)
        {
            try
            {
                string rpta = "";
                if (txtRubro.Text == string.Empty)
                {
                    this.MensajeError("Falta ingresar algunos datos, será marcado");
                    ErrorIcono.SetError(txtRubro, "Ingrese un nombre de categoria.");
                }
                else
                {
                    rpta = RnRubro.Insertar(txtRubro.Text.Trim());
                    Limpiar();
                }
                if (rpta.Equals("OK"))
                {
                    this.MensajeOK("Se realizo la insercion de manera correcta");
                }
                else
                {
                    this.MensajeError(rpta);
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message + ex.StackTrace);
            }
        }
    }
}
