using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using ekosat_website.Classes;

namespace ekosat_website
{
    public partial class MessageDelete : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int selectedID = Convert.ToInt32(Request.QueryString["id"]);

            SqlCommand commandDelete = new SqlCommand("Delete from ContactTable where ContactID=@pid",SqlConnectionClass.connection);

            SqlConnectionClass.CheckConnection();

            commandDelete.Parameters.AddWithValue("@pid",selectedID);

            commandDelete.ExecuteNonQuery();

            Response.Redirect("Messages.aspx");
        }

    }
}