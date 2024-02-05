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
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlCommand commandList = new SqlCommand("Select CarID,CarModel,CarBrandID,CarFuelType,CarDescription,CarContact,CarSeller,CarPhoto1,CarPhoto2,CarPhoto3,CarPrice,CarConfirmation,BrandID,BrandName from CarTable inner join BrandTable on CarTable.CarBrandID=BrandTable.BrandID where CarConfirmation=@pcon", SqlConnectionClass.connection);

            SqlConnectionClass.CheckConnection();

            commandList.Parameters.AddWithValue("@pcon",true);

            SqlDataReader dt = commandList.ExecuteReader();

            DataList1.DataSource = dt;

            DataList1.DataBind();

            dt.Close();
        }
    }
}