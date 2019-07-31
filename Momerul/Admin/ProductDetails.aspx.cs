using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace Momerul.Admin
{
    public partial class ProductDetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string cs = ConfigurationManager.ConnectionStrings["DBConnection"].ConnectionString;
            SqlConnection con = new SqlConnection(cs);

            con.Open();
            SqlCommand scmd = new SqlCommand("select ProductID,ProductName,ProductPrice,ProducDescription from Products", con);
            SqlDataReader dr = scmd.ExecuteReader();
            GridView1.DataSource = dr;
            
            GridView1.DataBind();
            con.Close();
        }
    }
}