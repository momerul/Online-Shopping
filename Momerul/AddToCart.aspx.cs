using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Momerul.BusinessLayer;

namespace Momerul
{
    public partial class AddToCart : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Text = Label1.Text + " " + Request.QueryString["id".ToString()];
        }

        protected void BtnSubmit_Click(object sender, EventArgs e)
        {
            Shopping shopping = new Shopping()
            {
                Name = TxtName.Text,
                Email = TxtEmail.Text,
                Mobile = Convert.ToInt32(TxtMobile.Text),
                Address = TxtAddress.Text,
                ProductId = Convert.ToInt32(TxtProductId.Text)
            };
            shopping.AddOrderDetails();
            cleartext();
        }

        private void cleartext()
        {
            TxtName.Text = "";
            TxtEmail.Text = "";
            TxtMobile.Text = "";
            TxtAddress.Text = "";
            TxtProductId.Text = "";
        }
    }
}