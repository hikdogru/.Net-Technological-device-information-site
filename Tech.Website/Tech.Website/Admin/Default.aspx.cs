using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Tech.DataAccessLayer;

namespace Tech.Website.Admin
{
    public partial class Default : System.Web.UI.Page
    {
        ProductDal _productDal = new ProductDal();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadProducts();
            }
        }

        private void LoadProducts()
        {
            var productList = _productDal.JoinProducts();
            
            rptProducts.DataSource = productList;
            rptProducts.DataBind();
        }
    }
}