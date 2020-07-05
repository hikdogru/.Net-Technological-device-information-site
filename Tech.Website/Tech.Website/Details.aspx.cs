using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Tech.DataAccessLayer;
using Tech.WebClass;

namespace Tech.Website
{
    public partial class Details : System.Web.UI.Page
    {
        ProductDal _productDal = new ProductDal();
        protected void Page_Load(object sender, EventArgs e)
        {
            string id = Request.QueryString["productId"];

            if (!String.IsNullOrEmpty(id))
            {
                LoadProductDetails(id);
            }
        }

        public void LoadProductDetails(string id)
        {

            rptRightSide.DataSource = _productDal.GetRandomProducts(5);
            rptRightSide.DataBind();

            var productDetails = _productDal.GetProductDetails(id);
            detailsRepeater.DataSource = productDetails;
            detailsRepeater.DataBind();
            rptDetails.DataSource = productDetails;
            rptDetails.DataBind();


        }


    }
}