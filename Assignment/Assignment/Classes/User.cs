using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;

namespace E_commerceAssignment.Classes
{
    public class User
    {
        public int Id { get; set; }
        public string FirstName { get; set; }
        public string LastName { get; set; }
        public string NIC { get; set; }
        public string Address1 { get; set; }
        public string Address2 { get; set; }
        public string PhoneNumber { get; set; }
        public string MobileNumber { get; set; }
        public string EmailAddress { get; set; }
        public int GenderId { get; set; }
        public int CountryId { get; set; }
        public DateTime DateAddedTimeStamp { get; set; }
        public DateTime LastModifiedTimeStamp { get; set; }
        public bool isActive { get; set; }

        private readonly string _connectionString;

        private SqlConnection _connection;

        public User()
        {
            _connectionString = ConfigurationManager.ConnectionStrings["myConnectionString"].ConnectionString;
        }

        public DataSet GetAllUsers()
        {
            var ds = new DataSet();

            try
            {
                _connection = new SqlConnection(_connectionString);

                string query = @"SELECT * FROM [User]";

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

        public bool RegisterUser(string password)
        {
            var isOperationSuccess = false;
            try
            {
                using (_connection = new SqlConnection(_connectionString))
                {
                    _connection.Open();
                    var sql = @"INSERT INTO [tbl_user] (FirstName, LastName, NIC, Address1, Address2, EmailAddress, PhoneNumber, MobileNumber, 
                                              Gender_Id, Country_Id, DateAddedTimeStamp, LastModifiedTimeStamp, 
                                              isActive) 
                                  VALUES(@FirstName, @LastName, @NIC, @Address1, @Address2, @EmailAddress, @PhoneNumber, @MobileNumber, 
                                              @Gender_Id, @Country_Id, GETDATE(), GETDATE(), 
                                              1)

                                DECLARE @userID INT = SCOPE_IDENTITY()

                            INSERT INTO [dbo].[tbl_UserCredentials]
                                   ([User_id]
                                   ,[Username]
                                   ,[Password]
                                   ,[LastLoginTimeStamp]
                                   ,[DateAddedTimeStamp]
                                   ,[LastModifiedTimeStamp]
                                   ,[IsAdmin]
                                   ,[IsActive])
                             VALUES
                                   (@userID
                                   ,@EmailAddress
                                   ,@Password
                                   ,NULL
                                   ,GETDATE()
                                   ,GETDATE()
                                   ,0
                                   ,1)
                            ";


                    using (var cmd = new SqlCommand(sql, _connection))
                    {
                        cmd.Parameters.AddWithValue("@FirstName", FirstName);
                        cmd.Parameters.AddWithValue("@LastName", LastName);
                        cmd.Parameters.AddWithValue("@NIC", NIC);
                        cmd.Parameters.AddWithValue("@Address1", Address1);
                        cmd.Parameters.AddWithValue("@Address2", Address2);
                        cmd.Parameters.AddWithValue("@EmailAddress", EmailAddress);
                        cmd.Parameters.AddWithValue("@PhoneNumber", PhoneNumber);
                        cmd.Parameters.AddWithValue("@MobileNumber", MobileNumber);
                        cmd.Parameters.AddWithValue("@Gender_Id", GenderId);
                        cmd.Parameters.AddWithValue("@Country_Id", CountryId);
                        cmd.Parameters.AddWithValue("@Password", password);

                        cmd.ExecuteNonQuery();
                    }

                    _connection.Close();
                    isOperationSuccess = true;
                }
            }
            catch (Exception e)
            {
                isOperationSuccess = false;
            }

            return isOperationSuccess;
        }

        public bool DeActivateUser()
        {
            var isOperationSuccess = false;
            try
            {
                using (_connection = new SqlConnection(_connectionString))
                {
                    _connection.Open();
                    var sql = @"UPDATE [User] SET IsActive = 0, LastModifiedTimeStamp=GETDATE() WHERE Id = @UserId";

                    using (var cmd = new SqlCommand(sql, _connection))
                    {
                        cmd.Parameters.AddWithValue("@UserId", Id);
                        cmd.ExecuteNonQuery();
                    }

                    _connection.Close();
                    isOperationSuccess = true;
                }
            }
            catch (Exception e)
            {
                isOperationSuccess = false;
            }

            return isOperationSuccess;
        }

        public bool ActivateUser()
        {
            var isOperationSuccess = false;
            try
            {
                using (_connection = new SqlConnection(_connectionString))
                {
                    _connection.Open();
                    var sql = @"UPDATE [User] SET IsActive = 1, LastModifiedTimeStamp=GETDATE() WHERE Id = @UserId";

                    using (var cmd = new SqlCommand(sql, _connection))
                    {
                        cmd.Parameters.AddWithValue("@UserId", Id);
                        cmd.ExecuteNonQuery();
                    }

                    _connection.Close();
                    isOperationSuccess = true;
                }
            }
            catch (Exception e)
            {
                isOperationSuccess = false;
            }

            return isOperationSuccess;
        }
    }
}