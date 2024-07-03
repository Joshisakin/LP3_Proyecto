using Interfaz.FrmChild.FrmxRol.Controlador.MdiChild;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Interfaz.FrmChild.FrmxRol
{
    public partial class MainControlador : Form
    {
        public MainControlador()
        {
            InitializeComponent();
        }

        private void MainControlador_Load(object sender, EventArgs e)
        {

        }

        private void menuStrip1_ItemClicked(object sender, ToolStripItemClickedEventArgs e)
        {

        }

        private void agregarUnaOrdenToolStripMenuItem_Click(object sender, EventArgs e)
        {
            FrmOrdenes frm = new FrmOrdenes();
            frm.MdiParent = this;
            frm.Show();
        }

        private void salirToolStripMenuItem_Click(object sender, EventArgs e)
        {
            this.Close();
        }
    }
}
