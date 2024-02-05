using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace ekosat_website.Classes
{
    public class SqlConnectionClass
    {
        public static SqlConnection connection = new SqlConnection("Data Source=(localdb)\\MSSQLLocalDB;Initial Catalog=\"Ekosat Website\";Integrated Security=True");

        public static void CheckConnection()
        {
            if (connection.State==System.Data.ConnectionState.Closed)
            {
                connection.Open();
            }
            else
            {

            }
        }

        

    }
}   