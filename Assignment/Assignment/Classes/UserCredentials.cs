using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;

namespace E_commerceAssignment.Classes
{
    public class UserCredentials
    {
        public int Id { get; set; }
        public int User_id { get; set; }
        public string Username { get; set; }
        public string Password { get; set; }
        public DateTime LastLoginTimeStamp { get; set; }
        public DateTime DateAddedTimeStamp { get; set; }
        public DateTime LastModifiedTimeStamp { get; set; }
        public bool IsAdmin { get; set; }
        public bool IsActive { get; set; }

        private readonly string _connectionString;

        private SqlConnection _connection;

        public UserCredentials()
        {
            _connectionString = ConfigurationManager.ConnectionStrings["myConnectionString"].ConnectionString;
        }

        public bool validateUserLogin()
        {
            var ds = new DataSet();
            var isLoginOk = false;
            try
            {
                _connection = new SqlConnection(_connectionString);

                string query = @"SELECT * FROM [tbl_UserCredentials] WHERE username=@username and password=@password";

                using (var cmd = new SqlCommand(query, _connection))
                {
                    cmd.Parameters.AddWithValue("@username", Username);
                    cmd.Parameters.AddWithValue("@password", Password);

                    //Set up our dataadapter
                    SqlDataAdapter adapter = new SqlDataAdapter(cmd);

                    //Set up and fill the dataset
                    adapter.Fill(ds);

                    //Close connection
                    _connection.Close();

                    if (ds != null && ds.Tables[0].Rows.Count > 0)
                    {
                        isLoginOk = true;
                    }
                }
            }
            catch (Exception e)
            {
                Console.WriteLine(e);
            }

            return isLoginOk;
        }

        public bool validateAdminLogin()
        {
            var ds = new DataSet();
            var isLoginOk = false;
            try
            {
                _connection = new SqlConnection(_connectionString);

                string query = @"SELECT * FROM [tbl_UserCredentials] WHERE username=@username and password=@password and IsAdmin=1";

                using (var cmd = new SqlCommand(query, _connection))
                {
                    cmd.Parameters.AddWithValue("@username", Username);
                    cmd.Parameters.AddWithValue("@password", Password);

                    //Set up our dataadapter
                    SqlDataAdapter adapter = new SqlDataAdapter(cmd);

                    //Set up and fill the dataset
                    adapter.Fill(ds);

                    //Close connection
                    _connection.Close();

                    if (ds != null && ds.Tables[0].Rows.Count > 0)
                    {
                        isLoginOk = true;
                        User_id = Convert.ToInt32(ds.Tables[0].Rows[0]["User_id"]);
                    }
                }
            }
            catch (Exception e)
            {
                Console.WriteLine(e);
            }

            return isLoginOk;
        }
    }
}