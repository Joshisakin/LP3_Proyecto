namespace Interfaz
{
    partial class FrmPaises
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
            this.TbCrlNacionalidad = new System.Windows.Forms.TabControl();
            this.tabPage1 = new System.Windows.Forms.TabPage();
            this.tabPage2 = new System.Windows.Forms.TabPage();
            this.label1 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            this.CmbPaisPasajero = new System.Windows.Forms.ComboBox();
            this.CmbCiudadPasajero = new System.Windows.Forms.ComboBox();
            this.label4 = new System.Windows.Forms.Label();
            this.TxtPasaporteBool = new System.Windows.Forms.TextBox();
            this.BtnPasaporteInfo = new System.Windows.Forms.Button();
            this.label5 = new System.Windows.Forms.Label();
            this.label6 = new System.Windows.Forms.Label();
            this.TxtDurEstadia = new System.Windows.Forms.TextBox();
            this.label7 = new System.Windows.Forms.Label();
            this.label8 = new System.Windows.Forms.Label();
            this.TxtNomCiudad = new System.Windows.Forms.TextBox();
            this.label9 = new System.Windows.Forms.Label();
            this.label10 = new System.Windows.Forms.Label();
            this.TxtNomPais = new System.Windows.Forms.TextBox();
            this.TbCrlNacionalidad.SuspendLayout();
            this.tabPage1.SuspendLayout();
            this.tabPage2.SuspendLayout();
            this.SuspendLayout();
            // 
            // TbCrlNacionalidad
            // 
            this.TbCrlNacionalidad.Controls.Add(this.tabPage1);
            this.TbCrlNacionalidad.Controls.Add(this.tabPage2);
            this.TbCrlNacionalidad.Location = new System.Drawing.Point(13, 13);
            this.TbCrlNacionalidad.Name = "TbCrlNacionalidad";
            this.TbCrlNacionalidad.SelectedIndex = 0;
            this.TbCrlNacionalidad.Size = new System.Drawing.Size(286, 425);
            this.TbCrlNacionalidad.TabIndex = 0;
            // 
            // tabPage1
            // 
            this.tabPage1.Controls.Add(this.TxtDurEstadia);
            this.tabPage1.Controls.Add(this.label6);
            this.tabPage1.Controls.Add(this.label5);
            this.tabPage1.Controls.Add(this.BtnPasaporteInfo);
            this.tabPage1.Controls.Add(this.TxtPasaporteBool);
            this.tabPage1.Controls.Add(this.label4);
            this.tabPage1.Controls.Add(this.CmbCiudadPasajero);
            this.tabPage1.Controls.Add(this.CmbPaisPasajero);
            this.tabPage1.Controls.Add(this.label3);
            this.tabPage1.Controls.Add(this.label2);
            this.tabPage1.Controls.Add(this.label1);
            this.tabPage1.Location = new System.Drawing.Point(4, 25);
            this.tabPage1.Name = "tabPage1";
            this.tabPage1.Padding = new System.Windows.Forms.Padding(3);
            this.tabPage1.Size = new System.Drawing.Size(278, 396);
            this.tabPage1.TabIndex = 0;
            this.tabPage1.Text = "Control Pasajero";
            this.tabPage1.UseVisualStyleBackColor = true;
            // 
            // tabPage2
            // 
            this.tabPage2.Controls.Add(this.TxtNomPais);
            this.tabPage2.Controls.Add(this.label10);
            this.tabPage2.Controls.Add(this.label9);
            this.tabPage2.Controls.Add(this.TxtNomCiudad);
            this.tabPage2.Controls.Add(this.label8);
            this.tabPage2.Controls.Add(this.label7);
            this.tabPage2.Location = new System.Drawing.Point(4, 25);
            this.tabPage2.Name = "tabPage2";
            this.tabPage2.Padding = new System.Windows.Forms.Padding(3);
            this.tabPage2.Size = new System.Drawing.Size(278, 396);
            this.tabPage2.TabIndex = 1;
            this.tabPage2.Text = "Control Ciudades";
            this.tabPage2.UseVisualStyleBackColor = true;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(6, 15);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(91, 16);
            this.label1.TabIndex = 0;
            this.label1.Text = "Nacionalidad:";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(9, 60);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(94, 16);
            this.label2.TabIndex = 1;
            this.label2.Text = "Pais de origen";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(9, 105);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(110, 16);
            this.label3.TabIndex = 2;
            this.label3.Text = "Ciudad de origen";
            // 
            // CmbPaisPasajero
            // 
            this.CmbPaisPasajero.FormattingEnabled = true;
            this.CmbPaisPasajero.Location = new System.Drawing.Point(125, 55);
            this.CmbPaisPasajero.Name = "CmbPaisPasajero";
            this.CmbPaisPasajero.Size = new System.Drawing.Size(121, 24);
            this.CmbPaisPasajero.TabIndex = 3;
            // 
            // CmbCiudadPasajero
            // 
            this.CmbCiudadPasajero.FormattingEnabled = true;
            this.CmbCiudadPasajero.Location = new System.Drawing.Point(125, 102);
            this.CmbCiudadPasajero.Name = "CmbCiudadPasajero";
            this.CmbCiudadPasajero.Size = new System.Drawing.Size(121, 24);
            this.CmbCiudadPasajero.TabIndex = 4;
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(12, 260);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(73, 16);
            this.label4.TabIndex = 5;
            this.label4.Text = "Pasaporte:";
            // 
            // TxtPasaporteBool
            // 
            this.TxtPasaporteBool.Location = new System.Drawing.Point(125, 257);
            this.TxtPasaporteBool.Name = "TxtPasaporteBool";
            this.TxtPasaporteBool.Size = new System.Drawing.Size(100, 22);
            this.TxtPasaporteBool.TabIndex = 6;
            // 
            // BtnPasaporteInfo
            // 
            this.BtnPasaporteInfo.Location = new System.Drawing.Point(125, 306);
            this.BtnPasaporteInfo.Name = "BtnPasaporteInfo";
            this.BtnPasaporteInfo.Size = new System.Drawing.Size(100, 23);
            this.BtnPasaporteInfo.TabIndex = 7;
            this.BtnPasaporteInfo.Text = "Ver detalles";
            this.BtnPasaporteInfo.UseVisualStyleBackColor = true;
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Location = new System.Drawing.Point(12, 158);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(56, 16);
            this.label5.TabIndex = 8;
            this.label5.Text = "Estadía:";
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.Location = new System.Drawing.Point(15, 201);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(64, 16);
            this.label6.TabIndex = 9;
            this.label6.Text = "Duración:";
            // 
            // TxtDurEstadia
            // 
            this.TxtDurEstadia.Location = new System.Drawing.Point(125, 201);
            this.TxtDurEstadia.Name = "TxtDurEstadia";
            this.TxtDurEstadia.Size = new System.Drawing.Size(100, 22);
            this.TxtDurEstadia.TabIndex = 10;
            // 
            // label7
            // 
            this.label7.AutoSize = true;
            this.label7.Location = new System.Drawing.Point(7, 20);
            this.label7.Name = "label7";
            this.label7.Size = new System.Drawing.Size(53, 16);
            this.label7.TabIndex = 0;
            this.label7.Text = "Ciudad.";
            // 
            // label8
            // 
            this.label8.AutoSize = true;
            this.label8.Location = new System.Drawing.Point(10, 55);
            this.label8.Name = "label8";
            this.label8.Size = new System.Drawing.Size(59, 16);
            this.label8.TabIndex = 1;
            this.label8.Text = "Nombre:";
            // 
            // TxtNomCiudad
            // 
            this.TxtNomCiudad.Location = new System.Drawing.Point(93, 55);
            this.TxtNomCiudad.Name = "TxtNomCiudad";
            this.TxtNomCiudad.Size = new System.Drawing.Size(100, 22);
            this.TxtNomCiudad.TabIndex = 2;
            // 
            // label9
            // 
            this.label9.AutoSize = true;
            this.label9.Location = new System.Drawing.Point(13, 106);
            this.label9.Name = "label9";
            this.label9.Size = new System.Drawing.Size(37, 16);
            this.label9.TabIndex = 3;
            this.label9.Text = "País.";
            // 
            // label10
            // 
            this.label10.AutoSize = true;
            this.label10.Location = new System.Drawing.Point(13, 149);
            this.label10.Name = "label10";
            this.label10.Size = new System.Drawing.Size(59, 16);
            this.label10.TabIndex = 4;
            this.label10.Text = "Nombre:";
            // 
            // TxtNomPais
            // 
            this.TxtNomPais.Location = new System.Drawing.Point(93, 149);
            this.TxtNomPais.Name = "TxtNomPais";
            this.TxtNomPais.Size = new System.Drawing.Size(100, 22);
            this.TxtNomPais.TabIndex = 5;
            // 
            // FrmPaises
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(306, 450);
            this.Controls.Add(this.TbCrlNacionalidad);
            this.Name = "FrmPaises";
            this.Text = "FrmPaises";
            this.TbCrlNacionalidad.ResumeLayout(false);
            this.tabPage1.ResumeLayout(false);
            this.tabPage1.PerformLayout();
            this.tabPage2.ResumeLayout(false);
            this.tabPage2.PerformLayout();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.TabControl TbCrlNacionalidad;
        private System.Windows.Forms.TabPage tabPage1;
        private System.Windows.Forms.TabPage tabPage2;
        private System.Windows.Forms.Button BtnPasaporteInfo;
        private System.Windows.Forms.TextBox TxtPasaporteBool;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.ComboBox CmbCiudadPasajero;
        private System.Windows.Forms.ComboBox CmbPaisPasajero;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.TextBox TxtDurEstadia;
        private System.Windows.Forms.Label label6;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.TextBox TxtNomPais;
        private System.Windows.Forms.Label label10;
        private System.Windows.Forms.Label label9;
        private System.Windows.Forms.TextBox TxtNomCiudad;
        private System.Windows.Forms.Label label8;
        private System.Windows.Forms.Label label7;
    }
}