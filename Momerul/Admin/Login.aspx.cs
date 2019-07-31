using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;

namespace Momerul.Admin
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string LoginId = ConfigurationManager.AppSettings["UserName"];
            string LoginPass = ConfigurationManager.AppSettings["Password"];

            if(txtUserName.Text==LoginId&& txtPassword.Text==LoginPass)
            {
                //Session["abc"] = "Momerul.Admin";
                Response.Redirect("~/Admin/AddNewProduct.aspx");
            }
            else
            {
                lblMessage.Text = "Invalid Login";
            }
        }
    }
}