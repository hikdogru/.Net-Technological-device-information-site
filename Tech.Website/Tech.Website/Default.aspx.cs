using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography.X509Certificates;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Tech.DataAccessLayer;
using Tech.WebClass;

namespace Tech.Website
{
    public partial class Default : System.Web.UI.Page
    {
        ProductDal _productDal = new ProductDal();
        CategoryDal _categoryDal = new CategoryDal();
        protected void Page_Load(object sender, EventArgs e)
        {


            if (!IsPostBack)
            {

                LoadProducts();
                LoadCategories();
                LatestProducts();
            }
        }

        private void LoadCategories()
        {
            var categoryList = _categoryDal.GetCategories();
            categorySelect.DataSource = categoryList;
            categorySelect.DataTextField = "CategoryName";
            categorySelect.DataValueField = "CategoryID";

            categorySelect.DataBind();
            categorySelect.Items.Insert(0, "Select Category");

            categoryRepeater.DataSource = categoryList;
            categoryRepeater.DataBind();

        }


        private void LoadProducts()
        {
            var productList = _productDal.ProductGetAll();
            productRepeater.DataSource = productList;
            productRepeater.DataBind();

        }

        private void LatestProducts()
        {
            var productList = _productDal.LatestProducts(6);
            rptLatestProducts.DataSource = productList;
            rptLatestProducts.DataBind();
        }
    }
}