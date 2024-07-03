using Interfaz.FrmChild.FrmxRol.Controlador.MdiChild.SubFrm;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Interfaz.FrmChild.FrmxRol.Controlador.MdiChild
{
    public partial class FrmOrdenes : Form
    {
        public FrmOrdenes()
        {
            InitializeComponent();
        }

        private void Listado_Enter(object sender, EventArgs e)
        {

        }

        private void textBox1_Click(object sender, EventArgs e)
        {
            if (txtO_E.Text == "(Ingrese aqui el Codigo de Envio)")
            {
                txtO_E.Clear();
            }
        }

        private void txtO_E_TextChanged(object sender, EventArgs e)
        {

        }

        private void txtO_E_Leave(object sender, EventArgs e)
        {
            if (txtO_E.Text == "")
            {
                txtO_E.Text = "(Ingrese aqui el Codigo de Envio)";
            }
        }

        private void button1_Click(object sender, EventArgs e)
        {
            AddEmpresa frm = new AddEmpresa();
            frm.ShowDialog();
        }

        private void button2_Click(object sender, EventArgs e)
        {
            AddNavio frm = new AddNavio();
            frm.ShowDialog();
        }

        private void btnListaAdd_Click(object sender, EventArgs e)
        {
            AddProducto frm = new AddProducto();
            frm.ShowDialog();
        }
    }
}
