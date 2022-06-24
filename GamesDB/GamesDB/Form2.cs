using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace GamesDB
{
    public partial class Form2 : Form
    {
        private SqlConnection cn;
        public Form2()
        {
            InitializeComponent();
        }

        private SqlConnection getSGBDConnection()
        {
            return new SqlConnection("Data Source=tcp:mednat.ieeta.pt\\SQLSERVER,8101;User ID=p2g4;Password=BaseDados2022;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False");
        }

        private bool verifySGBDConnection()
        {
            if (cn == null)
                cn = getSGBDConnection();
            if (cn.State != ConnectionState.Open)
                cn.Open();
            return cn.State == ConnectionState.Open;
        }

        private void InserirUtilizador(Utilizador utilizador)
        {
            if (verifySGBDConnection())
                return;
            SqlCommand cmd = new SqlCommand("newUtilizador");

            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Clear();
            cmd.Parameters.Add("@username", SqlDbType.VarChar, 60).Value = utilizador.nome;
            cmd.Parameters.Add("@email", SqlDbType.VarChar, 60).Value = utilizador.email;
            cmd.Parameters.Add("@name", SqlDbType.VarChar, 60).Value = utilizador.telemovel;
            cmd.Connection = cn;

            try
            {
                cmd.ExecuteNonQuery();
            }
            catch (Exception ex)
            {
                throw new Exception("Falha a adicionar utilizador à base de dados. \n ERROR MESSAGE: \n" + ex.Message);
            }
            finally
            {
                cn.Close();
            }
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

            InserirUtilizador(utilizador);
           
        }
    }
}
