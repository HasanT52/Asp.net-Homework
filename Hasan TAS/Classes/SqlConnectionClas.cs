using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace Hasan_TAS.Classes
{
    public class SqlConnectionClas
    {
        public static SqlConnection connection = new SqlConnection("Data Source=DESKTOP-2SJRI5S;Initial Catalog=\"Stein Motor Corp\";Integrated Security=True");

        public static void CheckConnection()
        {
            if (connection.State==System.Data.ConnectionState.Closed)
            
                connection.Open();

            else { }
            
        }
    }
}