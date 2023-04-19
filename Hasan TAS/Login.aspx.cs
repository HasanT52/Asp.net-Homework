 using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using Hasan_TAS.Classes;
using System.Data;

namespace Hasan_TAS
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            SqlCommand commandLogin = new SqlCommand("Select * from TableUser where UserMail=@pmail and userPassword=@ppass", SqlConnectionClas.connection);
            SqlConnectionClas.CheckConnection();

            string shaPass = Sha256Converter.ComputeSha256Hash(tboxPassword.Text);

            commandLogin.Parameters.AddWithValue("@pmail", tboxMail.Text);
            commandLogin.Parameters.AddWithValue("@ppass", shaPass);


            DataTable dt = new DataTable();

            SqlDataAdapter da = new SqlDataAdapter(commandLogin);

            da.Fill(dt);

            if(dt.Rows.Count > 0)
           
                if (tboxMail.Text == "hasantas2002@outlook.com")
                {
                    Session["IsUserAdmin"] = true;
                    Session["UserMail"] = "hasantas2002@outlook.com";

                    Response.Redirect("amdindeneme.aspx");
                }

                else
                {
                    Session["IsUserOnline"] = true;
                    Session["UserMail"] = dt.Rows[0].ToString();
                    Response.Redirect("ListCars.aspx");
                }

            else
            
                Response.Write("Mail adresi veya şifre Hatalı!");
            
            
        }
    }
}