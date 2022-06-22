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
        private int currentPessoa;
        private bool adding;
        private string connectionString = "Data Source = tcp:mednat.ieeta.pt\\SQLSERVER,8101; Initial Catalog = p2g4; uid = p2g4;" + "password = BaseDados2022";//"data source= localhost;integrated security=true;initial catalog=Biblioteca";
        public Form1()
        {
            InitializeComponent();
        }

        private void Login_Click(object sender, EventArgs e)
        {

        }
    }
}