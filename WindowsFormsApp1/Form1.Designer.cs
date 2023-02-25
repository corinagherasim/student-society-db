
namespace WindowsFormsApp1
{
    partial class Form1
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
            this.dgvTabel = new System.Windows.Forms.DataGridView();
            this.btnAfisare = new System.Windows.Forms.Button();
            this.cbSelect = new System.Windows.Forms.ComboBox();
            this.btnStergere = new System.Windows.Forms.Button();
            this.btnEditare = new System.Windows.Forms.Button();
            this.IDvol = new System.Windows.Forms.Label();
            this.tbIDvol = new System.Windows.Forms.TextBox();
            this.IDup = new System.Windows.Forms.Label();
            this.tbIDup = new System.Windows.Forms.TextBox();
            this.btnCerere = new System.Windows.Forms.Button();
            this.btnCerereHaving = new System.Windows.Forms.Button();
            this.tbIDupp = new System.Windows.Forms.TextBox();
            this.IDupp = new System.Windows.Forms.Label();
            ((System.ComponentModel.ISupportInitialize)(this.dgvTabel)).BeginInit();
            this.SuspendLayout();
            // 
            // dgvTabel
            // 
            this.dgvTabel.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgvTabel.Location = new System.Drawing.Point(160, 92);
            this.dgvTabel.Name = "dgvTabel";
            this.dgvTabel.RowHeadersWidth = 51;
            this.dgvTabel.RowTemplate.Height = 24;
            this.dgvTabel.Size = new System.Drawing.Size(821, 429);
            this.dgvTabel.TabIndex = 0;
            // 
            // btnAfisare
            // 
            this.btnAfisare.Location = new System.Drawing.Point(227, 12);
            this.btnAfisare.Name = "btnAfisare";
            this.btnAfisare.Size = new System.Drawing.Size(145, 63);
            this.btnAfisare.TabIndex = 1;
            this.btnAfisare.Text = "Afișează";
            this.btnAfisare.UseVisualStyleBackColor = true;
            this.btnAfisare.Click += new System.EventHandler(this.btnAfisare_Click);
            // 
            // cbSelect
            // 
            this.cbSelect.FormattingEnabled = true;
            this.cbSelect.Items.AddRange(new object[] {
            "voluntari",
            "editeaza departament voluntar",
            "sterge din voluntari",
            "voluntari sortati dupa nume",
            "departamente",
            "sterge din departamente",
            "departamente sortate dupa nume",
            "director",
            "sterge din director",
            "editeaza director",
            "directori sortati dupa id_departament",
            "activitati",
            "sterge din activitati",
            "editeaza voluntar de la activitati",
            "activitati sortate dupa id_voluntar",
            "taskuri",
            "sterge din taskuri",
            "taskuri sortate dupa id_proiect",
            "asociatii_partenere",
            "sterge din asociatii partenere",
            "asociatii partenere sortate dupa nume",
            "contracte",
            "contracte sortate dupa id_proiect",
            "proiecte",
            "sterge din proiecte",
            "proiecte sortate dupa nume",
            "sponsori",
            "sterge din sponsori",
            "sponsori sortati dupa domeniu",
            "joaca",
            "editeaza jocurile jucate la proiecte",
            "jucat sortat dupa id_proiect",
            "jocuri_hr",
            "sterge din jocuri",
            "jocuri sortate dupa nume",
            "orase",
            "sterge din orase",
            "orase sortate dupa nume"});
            this.cbSelect.Location = new System.Drawing.Point(413, 38);
            this.cbSelect.Name = "cbSelect";
            this.cbSelect.Size = new System.Drawing.Size(429, 24);
            this.cbSelect.TabIndex = 2;
            this.cbSelect.SelectedIndexChanged += new System.EventHandler(this.cbSelect_SelectedIndexChanged);
            // 
            // btnStergere
            // 
            this.btnStergere.Location = new System.Drawing.Point(25, 12);
            this.btnStergere.Name = "btnStergere";
            this.btnStergere.Size = new System.Drawing.Size(153, 61);
            this.btnStergere.TabIndex = 3;
            this.btnStergere.Text = "Șterge";
            this.btnStergere.UseVisualStyleBackColor = true;
            this.btnStergere.Click += new System.EventHandler(this.btnStergere_Click);
            // 
            // btnEditare
            // 
            this.btnEditare.Location = new System.Drawing.Point(25, 92);
            this.btnEditare.Name = "btnEditare";
            this.btnEditare.Size = new System.Drawing.Size(129, 72);
            this.btnEditare.TabIndex = 4;
            this.btnEditare.Text = "Editează";
            this.btnEditare.UseVisualStyleBackColor = true;
            this.btnEditare.Click += new System.EventHandler(this.btnEditare_Click);
            // 
            // IDvol
            // 
            this.IDvol.AutoSize = true;
            this.IDvol.Location = new System.Drawing.Point(12, 195);
            this.IDvol.Name = "IDvol";
            this.IDvol.Size = new System.Drawing.Size(37, 17);
            this.IDvol.TabIndex = 5;
            this.IDvol.Text = "ID 1:";
            this.IDvol.Click += new System.EventHandler(this.label1_Click);
            // 
            // tbIDvol
            // 
            this.tbIDvol.Location = new System.Drawing.Point(67, 192);
            this.tbIDvol.Name = "tbIDvol";
            this.tbIDvol.Size = new System.Drawing.Size(87, 22);
            this.tbIDvol.TabIndex = 6;
            // 
            // IDup
            // 
            this.IDup.AutoSize = true;
            this.IDup.Location = new System.Drawing.Point(-2, 245);
            this.IDup.Name = "IDup";
            this.IDup.Size = new System.Drawing.Size(73, 17);
            this.IDup.TabIndex = 7;
            this.IDup.Text = "ID update:";
            // 
            // tbIDup
            // 
            this.tbIDup.Location = new System.Drawing.Point(67, 248);
            this.tbIDup.Name = "tbIDup";
            this.tbIDup.Size = new System.Drawing.Size(87, 22);
            this.tbIDup.TabIndex = 8;
            // 
            // btnCerere
            // 
            this.btnCerere.Location = new System.Drawing.Point(25, 339);
            this.btnCerere.Name = "btnCerere";
            this.btnCerere.Size = new System.Drawing.Size(119, 44);
            this.btnCerere.TabIndex = 9;
            this.btnCerere.Text = "Project manager";
            this.btnCerere.UseVisualStyleBackColor = true;
            this.btnCerere.Click += new System.EventHandler(this.btnCerere_Click);
            // 
            // btnCerereHaving
            // 
            this.btnCerereHaving.Location = new System.Drawing.Point(25, 400);
            this.btnCerereHaving.Name = "btnCerereHaving";
            this.btnCerereHaving.Size = new System.Drawing.Size(119, 42);
            this.btnCerereHaving.TabIndex = 10;
            this.btnCerereHaving.Text = "Voluntari activi";
            this.btnCerereHaving.UseVisualStyleBackColor = true;
            this.btnCerereHaving.Click += new System.EventHandler(this.btnCerereHaving_Click);
            // 
            // tbIDupp
            // 
            this.tbIDupp.Location = new System.Drawing.Point(67, 220);
            this.tbIDupp.Name = "tbIDupp";
            this.tbIDupp.Size = new System.Drawing.Size(87, 22);
            this.tbIDupp.TabIndex = 11;
            // 
            // IDupp
            // 
            this.IDupp.AutoSize = true;
            this.IDupp.Location = new System.Drawing.Point(12, 220);
            this.IDupp.Name = "IDupp";
            this.IDupp.Size = new System.Drawing.Size(37, 17);
            this.IDupp.TabIndex = 12;
            this.IDupp.Text = "ID 2:";
            // 
            // Form1
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(993, 533);
            this.Controls.Add(this.IDupp);
            this.Controls.Add(this.tbIDupp);
            this.Controls.Add(this.btnCerereHaving);
            this.Controls.Add(this.btnCerere);
            this.Controls.Add(this.tbIDup);
            this.Controls.Add(this.IDup);
            this.Controls.Add(this.tbIDvol);
            this.Controls.Add(this.IDvol);
            this.Controls.Add(this.btnEditare);
            this.Controls.Add(this.btnStergere);
            this.Controls.Add(this.cbSelect);
            this.Controls.Add(this.btnAfisare);
            this.Controls.Add(this.dgvTabel);
            this.Name = "Form1";
            this.Text = "Form1";
            this.Load += new System.EventHandler(this.Form1_Load);
            ((System.ComponentModel.ISupportInitialize)(this.dgvTabel)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.DataGridView dgvTabel;
        private System.Windows.Forms.Button btnAfisare;
        private System.Windows.Forms.ComboBox cbSelect;
        private System.Windows.Forms.Button btnStergere;
        private System.Windows.Forms.Button btnEditare;
        private System.Windows.Forms.Label IDvol;
        private System.Windows.Forms.TextBox tbIDvol;
        private System.Windows.Forms.Label IDup;
        private System.Windows.Forms.TextBox tbIDup;
        private System.Windows.Forms.Button btnCerere;
        private System.Windows.Forms.Button btnCerereHaving;
        private System.Windows.Forms.TextBox tbIDupp;
        private System.Windows.Forms.Label IDupp;
    }
}

