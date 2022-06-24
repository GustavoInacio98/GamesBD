using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;
using System.Diagnostics;
using System.Windows.Forms;

namespace GamesDB.DBLayer
{
    class Login
    {

		internal static void Create(String id, String senha)
		{


			SqlCommand cmd = new SqlCommand();
			cmd.CommandType = CommandType.StoredProcedure;
			cmd.Parameters.Clear();

			SqlParameter idParam = new SqlParameter("@id", SqlDbType.VarChar);
			SqlParameter senhaParam = new SqlParameter("@senha", SqlDbType.VarChar);
			
			idParam.Value = id;
			senhaParam.Value = senha;

			cmd.Parameters.Add(idParam);
			cmd.Parameters.Add(senhaParam);

			

			cmd.Connection = Program.db.Open();

			try
			{
				cmd.ExecuteNonQuery();
			}
			catch (Exception ex)
			{
				MessageBox.Show("Failed to create user. \n Error message: \n" + ex.Message, "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
				Program.db.Close();
				return;
			}
			finally
			{
				Program.db.Close();
			}

			MessageBox.Show(id + " created sucessfully", "Information", MessageBoxButtons.OK, MessageBoxIcon.Information);

		}

		internal static User Read(String email, String password)
		{
			Debug.Assert(!email.Equals("") && !password.Equals(""), "Invalid email or password");

			SqlCommand cmd = new SqlCommand("SELECT * FROM dbo.Authenticate(@userEmail, @userPassword)", Program.db.Open());

			cmd.Parameters.Clear();
			cmd.Parameters.AddWithValue("@userEmail", email);
			cmd.Parameters.AddWithValue("@userPassword", password);

			SqlDataReader reader = cmd.ExecuteReader();
			User U = new User();

			while (reader.Read())
			{
				U.ID = Convert.ToInt32(reader["id"]);
				U.Name = Convert.ToString(reader["name"]);
				U.Email = Convert.ToString(reader["email"]);
				switch (Convert.ToString(reader["type"]))
				{
					case "Manager":
						U.Type = UserType.Manager;
						break;
					case "Participant":
						U.Type = UserType.Participant;
						break;
					case "Sponsor":
						U.Type = UserType.Sponsor;
						break;
					default:
						U.Type = UserType.Manager;
						break;
				}
				Program.db.Close();
				return U;
			}
			Program.db.Close();
			return null;    // No authentication
		}

	}
}
