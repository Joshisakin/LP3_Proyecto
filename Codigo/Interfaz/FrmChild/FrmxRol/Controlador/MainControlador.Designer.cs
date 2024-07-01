namespace Interfaz.FrmChild.FrmxRol
{
    partial class MainControlador
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.menuStrip1 = new System.Windows.Forms.MenuStrip();
            this.solicitudToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.ordenesToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.mercanciaToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.operacionesToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.monitoreoToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.menuStrip1.SuspendLayout();
            this.SuspendLayout();
            // 
            // menuStrip1
            // 
            this.menuStrip1.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.solicitudToolStripMenuItem,
            this.ordenesToolStripMenuItem,
            this.mercanciaToolStripMenuItem,
            this.operacionesToolStripMenuItem,
            this.monitoreoToolStripMenuItem});
            this.menuStrip1.Location = new System.Drawing.Point(0, 0);
            this.menuStrip1.Name = "menuStrip1";
            this.menuStrip1.Size = new System.Drawing.Size(800, 24);
            this.menuStrip1.TabIndex = 1;
            this.menuStrip1.Text = "menuStrip1";
            this.menuStrip1.ItemClicked += new System.Windows.Forms.ToolStripItemClickedEventHandler(this.menuStrip1_ItemClicked);
            // 
            // solicitudToolStripMenuItem
            // 
            this.solicitudToolStripMenuItem.Name = "solicitudToolStripMenuItem";
            this.solicitudToolStripMenuItem.Size = new System.Drawing.Size(76, 20);
            this.solicitudToolStripMenuItem.Text = "Solicitudes";
            // 
            // ordenesToolStripMenuItem
            // 
            this.ordenesToolStripMenuItem.Name = "ordenesToolStripMenuItem";
            this.ordenesToolStripMenuItem.Size = new System.Drawing.Size(63, 20);
            this.ordenesToolStripMenuItem.Text = "Ordenes";
            // 
            // mercanciaToolStripMenuItem
            // 
            this.mercanciaToolStripMenuItem.Name = "mercanciaToolStripMenuItem";
            this.mercanciaToolStripMenuItem.Size = new System.Drawing.Size(79, 20);
            this.mercanciaToolStripMenuItem.Text = "Mercancias";
            // 
            // operacionesToolStripMenuItem
            // 
            this.operacionesToolStripMenuItem.Name = "operacionesToolStripMenuItem";
            this.operacionesToolStripMenuItem.Size = new System.Drawing.Size(85, 20);
            this.operacionesToolStripMenuItem.Text = "Operaciones";
            // 
            // monitoreoToolStripMenuItem
            // 
            this.monitoreoToolStripMenuItem.Name = "monitoreoToolStripMenuItem";
            this.monitoreoToolStripMenuItem.Size = new System.Drawing.Size(75, 20);
            this.monitoreoToolStripMenuItem.Text = "Monitoreo";
            // 
            // MainControlador
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(800, 450);
            this.Controls.Add(this.menuStrip1);
            this.IsMdiContainer = true;
            this.MainMenuStrip = this.menuStrip1;
            this.Name = "MainControlador";
            this.Text = "RolControlador";
            this.Load += new System.EventHandler(this.MainControlador_Load);
            this.menuStrip1.ResumeLayout(false);
            this.menuStrip1.PerformLayout();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.MenuStrip menuStrip1;
        private System.Windows.Forms.ToolStripMenuItem solicitudToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem ordenesToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem mercanciaToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem operacionesToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem monitoreoToolStripMenuItem;
    }
}