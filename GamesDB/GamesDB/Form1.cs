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


       /* private void AtualizarUtilizadores()
        {
            if (verifySGBDConnection())
                return;
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "Discografia.updateUser";
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Clear();
            cmd.Parameters.Add("@username", SqlDbType.VarChar, 30).Value = u.username;
            cmd.Parameters.Add("@email", SqlDbType.VarChar, 30).Value = u.email;
            cmd.Parameters.Add("@name", SqlDbType.VarChar, 30).Value = u.name;
            cmd.Connection = cn;

            try
            {
                cmd.ExecuteNonQuery();
            }
            catch (Exception ex)
            {
                throw new Exception("Failed to update user in database. \n ERROR MESSAGE: \n" + ex.Message);
            }
            finally
            {
                cn.Close();
            }
        }*/



        private void Login_Click(object sender, EventArgs e)
        {
            if (verifySGBDConnection())
                return;
            SqlCommand cmd = new SqlCommand("SELECT * FROM checkLogins(@id,@senha)", cn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Clear();
            cmd.Parameters.Add("@id", SqlDbType.VarChar).Value = textBox3.Text;
            cmd.Parameters.Add("@senha", SqlDbType.VarChar).Value = textBox4.Text;
        }

        private void registar_Click(object sender, EventArgs e)
        {
            Form2 f2 = new Form2();
            f2.Show();
        }
    }
}