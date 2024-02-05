using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using ekosat_website.Classes;
using System.Data;

namespace ekosat_website
{
    public partial class Signup : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSignup_Click(object sender, EventArgs e)
        {
            SqlCommand commandRegister = new SqlCommand("insert into UserTable (UserName,UserSurname,UserMail,UserPassword) values (@pname,@psurname,@pmail,@ppass)", SqlConnectionClass.connection);
            SqlConnectionClass.CheckConnection();

            string newPass = Sha256Converter.ComputeSha256Hash(tboxPassword.Text);

            commandRegister.Parameters.AddWithValue("@pname", tboxName.Text);
            commandRegister.Parameters.AddWithValue("@psurname", tboxSurname.Text);
            commandRegister.Parameters.AddWithValue("@pmail", tboxMail.Text);
            commandRegister.Parameters.AddWithValue("@ppass", newPass);
            
            commandRegister.ExecuteNonQuery();


            SqlCommand commandLogin = new SqlCommand("Select * from UserTable where UserMail=@npmail and UserPassword=@nppass", SqlConnectionClass.connection);

            SqlConnectionClass.CheckConnection();

            string ShaPass = Sha256Converter.ComputeSha256Hash(tboxPassword.Text);

            commandLogin.Parameters.AddWithValue("@npmail", tboxMail.Text);
            commandLogin.Parameters.AddWithValue("@nppass", ShaPass);

            DataTable dt = new DataTable();

            SqlDataAdapter da = new SqlDataAdapter(commandLogin);

            da.Fill(dt);

            if (dt.Rows.Count > 0)
            {
                Response.Write("Your membership has been created");
                Response.Redirect("Login.aspx");
            }
            else
            {
                Response.Write("Your membership could not be created");
            }
        }
    }
}