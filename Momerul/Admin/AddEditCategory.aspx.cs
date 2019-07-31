using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Momerul.BusinessLayer;

namespace Momerul.Admin
{
    public partial class AddEditCategory : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            Shopping shopping = new Shopping
            {
                CategoryName = TxtCategory.Text
            };

            shopping.AddNewCategory();
            TxtCategory.Text = "";
            //Response.Redirect("~/Admin/AddNewProduct.aspx");
        }
    }
}