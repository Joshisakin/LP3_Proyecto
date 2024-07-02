using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Interfaz.FrmChild.FrmxRol.Controlador.MdiChild.SubFrm
{
    public partial class AddEmpresa : Form
    {
        public AddEmpresa()
        {
            InitializeComponent();
        }

        private void button2_Click(object sender, EventArgs e)
        {
            AddRubro frm = new AddRubro();
            frm.ShowDialog();
        }
    }
}
