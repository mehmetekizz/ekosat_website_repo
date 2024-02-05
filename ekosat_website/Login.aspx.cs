using ekosat_website.Classes;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ekosat_website
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Request.Cookies["UserMail"] !=null && Request.Cookies["UserPassword"] !=null)
                {
                    tboxMail.Text = Request.Cookies["UserMail"].Value;
                    tboxPassword.Attributes["value"] = Request.Cookies["UserPassword"].Value;
                }
            }
        }
        protected void btnLogin_Click(object sender, EventArgs e)
        {
            SqlCommand commandLogin = new SqlCommand("Select * from UserTable where UserMail=@pmail and UserPassword=@ppass", SqlConnectionClass.connection);

            SqlConnectionClass.CheckConnection();

            string ShaPass = Sha256Converter.ComputeSha256Hash(tboxPassword.Text);

            commandLogin.Parameters.AddWithValue("@pmail", tboxMail.Text);
            commandLogin.Parameters.AddWithValue("@ppass", ShaPass);

            DataTable dt = new DataTable();

            SqlDataAdapter da = new SqlDataAdapter(commandLogin);

            da.Fill(dt);

            if (dt.Rows.Count > 0)
            {              
                if (tboxMail.Text == "mehmeterenekiz@gmail.com")
                {
                    Response.Write("logged in to admin page");
                    Response.Redirect("Admin.aspx");
                }
                else
                {
                    Response.Write("logged in to user page");
                }
            }
            else
            {
                Response.Write("Email address or password is wrong");
            }
        }

        protected void tboxPassword_TextChanged(object sender, EventArgs e)
        {

        }
    }
}