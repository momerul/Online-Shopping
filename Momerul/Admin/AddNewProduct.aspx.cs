using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Momerul.BusinessLayer;
using System.Data;
using System.Data.SqlClient;
using System.IO;

namespace Momerul.Admin
{
    public partial class AddNewProduct : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                GetCategories();   
            }
        }

        private void GetCategories()
        {
            Shopping shopping = new Shopping();
            DataTable dt = shopping.GetCategorie();

            if(dt.Rows.Count>0)
            {
                DDLCategory.DataValueField = "CategoryID";
                DDLCategory.DataTextField = "CategoryName";
                DDLCategory.DataSource = dt;
                DDLCategory.DataBind();
            }
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if(ImageUpload.PostedFile !=null)
            {
                SaveImage();

                Shopping shopping = new Shopping
                {
                    ProductName = TxtProductName.Text,
                    ProducDescription = TxtDescriptions.Text,
                    ProductPrice = TxtPrice.Text.ToString(),
                    ProductImage = "~/ImageStore/" + ImageUpload.FileName,
                    CategoryID = Convert.ToInt32(DDLCategory.SelectedValue),
                    ProductQuantity = Convert.ToInt32(txtQuantity.Text)
                };

                shopping.AddNewProduct();
                ClearText();
            }
        }

        private void ClearText()
        {
            TxtProductName.Text = "";
            TxtPrice.Text = "";
            TxtDescriptions.Text = "";
            txtQuantity.Text = "";          
        }

        private void SaveImage()
        {
            if (ImageUpload.HasFile)
            {
                string str = ImageUpload.FileName;
                ImageUpload.PostedFile.SaveAs(Server.MapPath("~/ImageStore/" + str));

            }
        }

        
    }
}
