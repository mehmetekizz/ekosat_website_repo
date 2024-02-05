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
    public partial class Contact : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSend_Click(object sender, EventArgs e)
        {

            SqlCommand commandAdd = new SqlCommand("insert into ContactTable (ContactName,ContactMail,ContactMessage) values (@pname,@pmail,@pmsg)",SqlConnectionClass.connection);

            SqlConnectionClass.CheckConnection();

            commandAdd.Parameters.AddWithValue("@pname",tboxName.Text);
            commandAdd.Parameters.AddWithValue("@pmail", tboxMail.Text);
            commandAdd.Parameters.AddWithValue("@pmsg", tboxMessage.Text);

            commandAdd.ExecuteNonQuery();

            /////////////////////////////////////////////////////////////////////////////
            ///
            SqlCommand commandContact = new SqlCommand("Select * from ContactTable where ContactName=@npname and ContactMail=@npmail and ContactMessage=@npmsg", SqlConnectionClass.connection);

            SqlConnectionClass.CheckConnection();

            commandContact.Parameters.AddWithValue("@npname", tboxName.Text);
            commandContact.Parameters.AddWithValue("@npmail", tboxMail.Text);
            commandContact.Parameters.AddWithValue("@npmsg", tboxMessage.Text);

            DataTable dt = new DataTable();

            SqlDataAdapter da = new SqlDataAdapter(commandContact);

            da.Fill(dt);

            if (dt.Rows.Count > 0)
            {
                Response.Write("Mesajınız gönderildi, lütfen tekrar butona basmayınız.");
            }
            else
            {
                Response.Write("Mesajınız gönderilemedi!");
            }

        }

        protected void tboxMail_TextChanged(object sender, EventArgs e)
        {

        }
    }
}