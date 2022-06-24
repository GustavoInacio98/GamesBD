namespace GamesDB
{
    partial class InterUtilizador
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
            this.Wishlist = new System.Windows.Forms.Button();
            this.ProcuraJogos = new System.Windows.Forms.Button();
            this.Logout = new System.Windows.Forms.Button();
            this.SuspendLayout();
            // 
            // Wishlist
            // 
            this.Wishlist.Location = new System.Drawing.Point(224, 147);
            this.Wishlist.Name = "Wishlist";
            this.Wishlist.Size = new System.Drawing.Size(108, 54);
            this.Wishlist.TabIndex = 0;
            this.Wishlist.Text = "Wishlist";
            this.Wishlist.UseVisualStyleBackColor = true;
            // 
            // ProcuraJogos
            // 
            this.ProcuraJogos.Location = new System.Drawing.Point(430, 147);
            this.ProcuraJogos.Name = "ProcuraJogos";
            this.ProcuraJogos.Size = new System.Drawing.Size(103, 54);
            this.ProcuraJogos.TabIndex = 1;
            this.ProcuraJogos.Text = "Procura de jogos";
            this.ProcuraJogos.UseVisualStyleBackColor = true;
            // 
            // Logout
            // 
            this.Logout.Location = new System.Drawing.Point(22, 12);
            this.Logout.Name = "Logout";
            this.Logout.Size = new System.Drawing.Size(75, 23);
            this.Logout.TabIndex = 2;
            this.Logout.Text = "Logout";
            this.Logout.UseVisualStyleBackColor = true;
            // 
            // InterUtilizador
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(7F, 15F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(800, 450);
            this.Controls.Add(this.Logout);
            this.Controls.Add(this.ProcuraJogos);
            this.Controls.Add(this.Wishlist);
            this.Name = "InterUtilizador";
            this.Text = "Form3";
            this.ResumeLayout(false);

        }

        #endregion

        private Button Wishlist;
        private Button ProcuraJogos;
        private Button Logout;
    }
}