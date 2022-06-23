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
    public partial class Form1 : Form
    {
        private SqlConnection cn;
        public Form1()
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
            int valid = 0;
            if (verifySGBDConnection())
                return;
            using(SqlCommand cmd = new SqlCommand("Projeto.InsertUtilizador", cn))
            {
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Clear();
                cmd.Parameters.AddWithValue("@nome", Utilizador.nome);
                cmd.Parameters.AddWithValue("@password", Utilizador.password);
                cmd.Parameters.AddWithValue("@email", Utilizador.email);
                cmd.Parameters.AddWithValue("@telemovel", Utilizador.telemovel);
                cmd.Parameters.AddWithValue("@regiao", Utilizador.regiao);
                cmd.Connection = cn;

            }
        }

        private void Login_Click(object sender, EventArgs e)
        {

        }
    }
}