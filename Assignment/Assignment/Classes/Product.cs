using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace ECommerce.Classes
{
    public class Product
    {
        public int Id { get; set; }
        public int Category_Id { get; set; }
        public string Name { get; set; }
        public string Description { get; set; }
        public string NormalPrice { get; set; }
        public int Quantity { get; set; }
        public string ReferenceNumber { get; set; }
        public DateTime DateAddedTimeStamp { get; set; }
        public DateTime LastModifiedTimeStamp { get; set; }
        public DateTime LastModifiedbyUser_Id { get; set; }
        public bool IsActive { get; set; }
        public string ImageURL { get; set; }

        private readonly string _connectionString;

        private SqlConnection _connection;
        public Product()
        {
            _connectionString = ConfigurationManager.ConnectionStrings["myConnectionString"].ConnectionString;
        }

        public DataSet GetAllProductsByCategoryId()
        {
            var ds = new DataSet();

            try
            {
                _connection = new SqlConnection(_connectionString);

                string query = @"SELECT * FROM [tbl_Products] WHERE Category_Id = @Category_Id AND IsActive=1";

                using (var cmd = new SqlCommand(query, _connection))
                {
                    cmd.Parameters.AddWithValue("@Category_Id", Category_Id);

                    //Set up our dataadapter
                    SqlDataAdapter adapter = new SqlDataAdapter(cmd);

                    //Set up and fill the dataset
                    adapter.Fill(ds);

                    //Close connection
                    _connection.Close();
                }
            }
            catch (Exception e)
            {
                Console.WriteLine(e);
                throw;
            }

            return ds;
        }

        public DataSet GetAllProductsFiltered()
        {
            var ds = new DataSet();

            try
            {
                _connection = new SqlConnection(_connectionString);

                string query = @"SELECT * FROM [tbl_Products] WHERE Category_Id = @Category_Id AND IsActive=1 AND IsOnSale=1";

                using (var cmd = new SqlCommand(query, _connection))
                {
                    cmd.Parameters.AddWithValue("@Category_Id", Category_Id);

                    //Set up our dataadapter
                    SqlDataAdapter adapter = new SqlDataAdapter(cmd);

                    //Set up and fill the dataset
                    adapter.Fill(ds);

                    //Close connection
                    _connection.Close();
                }
            }
            catch (Exception e)
            {
                Console.WriteLine(e);
                throw;
            }

            return ds;
        }

        public DataSet GetAllProducts()
        {
            var ds = new DataSet();

            try
            {
                _connection = new SqlConnection(_connectionString);

                string query = @"SELECT * FROM [tbl_Products]";

                using (var cmd = new SqlCommand(query, _connection))
                {
                    //Set up our dataadapter
                    SqlDataAdapter adapter = new SqlDataAdapter(cmd);

                    //Set up and fill the dataset
                    adapter.Fill(ds);

                    //Close connection
                    _connection.Close();
                }
            }
            catch (Exception e)
            {
                Console.WriteLine(e);
                throw;
            }

            return ds;
        }

        public bool AddProduct()
        {
            return false;
        }

        public bool UpdateProduct()
        {
            return false;
        }

        public bool DeactivateProduct()
        {
            return false;
        }

        public bool ReActivateProduct()
        {
            return false;
        }

        public bool BuyProduct()
        {
            return false;
        }


        //View All Products
        //Add Product
        //Update Product
        //Deactivate product - UPDATE tbl_product set isActive = 0 where criteria
        //Activate Product - UPDATE tbl_product set isActive = 1 where criteria

        //Buy Product
    }
}