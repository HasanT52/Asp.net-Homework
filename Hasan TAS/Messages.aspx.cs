using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using Hasan_TAS.Classes;

namespace Hasan_TAS
{
    public partial class Messages : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlCommand commandList = new SqlCommand("Select * from TableContact", SqlConnectionClas.connection);

            SqlConnectionClas.CheckConnection();
            
            SqlDataReader dr = commandList.ExecuteReader();

            DataList1.DataSource = dr;

            DataList1.DataBind();

            dr.Close();
        }

        
    }
}