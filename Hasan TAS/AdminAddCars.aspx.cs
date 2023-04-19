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
    public partial class AdminAddCars : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Convert.ToBoolean(Session["IsUserAdmin"]) == true)
            {
                SqlCommand commandList = new SqlCommand("Select * from TableCar where CarConfirmation=@pcon", SqlConnectionClas.connection);
                SqlConnectionClas.CheckConnection();

                commandList.Parameters.AddWithValue("@pcon", false);
                SqlDataReader dr = commandList.ExecuteReader();

                DataList1.DataSource = dr;
                DataList1.DataBind();
                dr.Close();
            }

            else
                Response.Redirect("Login.aspx");
        }

    }
}