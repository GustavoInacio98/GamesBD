using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace GamesDB
{
    public partial class Form2 : Form
    {
        public Form2()
        {
            InitializeComponent();
        }


        private void button1_Click(object sender, EventArgs e)
        {
            Utilizador utilizador = new Utilizador();
            try
            {
                utilizador.nome = textBox1.Text;
                utilizador.password = textBox5.Text;
                utilizador.email = textBox2.Text;
                utilizador.telemovel = textBox3.Text;
                utilizador.regiao = textBox4.Text;
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }

            /*InserirUtilizador(utilizador);
            Utilizador.Items.Add(utilizador);
            AtualizarUtilizadores();*/
        }
    }
}
