using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using Momerul.BusinessLayer;
using System.IO;
using Momerul.Admin;

namespace Momerul
{
    public partial class details : System.Web.UI.Page
    {
       

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GetCategory();
                GetProducts(0);               
            }
        }
        private void GetCategory()
        {
            Shopping shopping = new Shopping();
            ddlCategory.DataSource = null;
            ddlCategory.DataSource = shopping.GetCategorie();
            ddlCategory.DataBind();

        }

        private void GetProducts(int CategoryID)
        {
            Shopping shopping = new Shopping()
            {
                CategoryID = CategoryID
            };
            dlProduct.DataSource = null;
            dlProduct.DataSource = shopping.GetAllProduct();
            dlProduct.DataBind();
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            int CategoryID = Convert.ToInt32((((LinkButton)sender).CommandArgument));
            GetProducts(CategoryID);
        }

        protected void dlProduct_ItemCommand(object source, DataListCommandEventArgs e)
        {
            if (e.CommandName == "Detail")
              {
                 Response.Redirect("ProductDetails.aspx?id=" + e.CommandArgument.ToString());
              }

            if (e.CommandName == "AddToCart")
            {
                Response.Redirect("AddToCart.aspx?id=" + e.CommandArgument.ToString());
            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            string cs = ConfigurationManager.ConnectionStrings["DBConnection"].ConnectionString;
            SqlConnection con = new SqlConnection(cs);
            con.Open();
            Shopping shopping = new Shopping
            {
                ProductName = TextBox1.Text
            };
            
            dlProduct.DataSource = null;
            dlProduct.DataSource = shopping.Search();
            dlProduct.DataBind();
            ClearText();
            con.Close();
        }
        private void ClearText()
        {
            TextBox1.Text = "";
        }
    }
}