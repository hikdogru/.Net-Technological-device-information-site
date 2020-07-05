using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Tech.DataAccessLayer;
using Tech.WebClass;

namespace Tech.Website
{
    public partial class Page : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadProducts();
                
            }
        }

        private void LoadProducts()
        {
            using (TechContext context = new TechContext())
            {
                var categories = context.Categories.ToList();
                rptMenu.DataSource = categories;
                rptMenu.DataBind();
            }
        }

       
    }
}