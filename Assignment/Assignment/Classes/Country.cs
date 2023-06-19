using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;

namespace E_commerceAssignment.Classes
{
    public class Country
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public DateTime DateAddedTimeStamp { get; set; }
        public DateTime LastModifiedTimeStamp { get; set; }
        public int LastModifiedbyUser_Id { get; set; }
        public bool IsActive { get; set; }

        private readonly string _connectionString;

        private SqlConnection _connection;

        public Country()
        {
            _connectionString = ConfigurationManager.ConnectionStrings["myConnectionString"].ConnectionString;
        }

        public DataSet GetAllCountries()
        {
            var ds = new DataSet();

            try
            {
                _connection = new SqlConnection(_connectionString);

                string query = @"SELECT * FROM tbl_Country";

                //Set up our command
                SqlCommand cmd = new SqlCommand(query, _connection);

                //Set up our dataadapter
                SqlDataAdapter adapter = new SqlDataAdapter(cmd);

                //Set up and fill the dataset
                adapter.Fill(ds);

                //Close connection
                _connection.Close();
            }
            catch (Exception e)
            {
                Console.WriteLine(e);
                throw;
            }

            return ds;
        }
    }
}