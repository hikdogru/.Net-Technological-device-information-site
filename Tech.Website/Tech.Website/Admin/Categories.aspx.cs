using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Tech.DataAccessLayer;
using Tech.WebClass;

namespace Tech.Website.Admin
{
    public partial class Categories : System.Web.UI.Page
    {
        CategoryDal _categoryDal = new CategoryDal();
        string _imagePath = @"MyWebSite\assets\img\category\";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadCategories();
                
            }
        }

        private void LoadCategories()
        {
            var categoryList = _categoryDal.GetCategories();
            var newCategoryList = _categoryDal.LatestCategories(3);

            rptCategories.DataSource = categoryList;
            rptCategories.DataBind();

            rptNewCategories.DataSource = newCategoryList;
            rptNewCategories.DataBind();
        }

        protected void btnSave_OnServerClick(object sender, EventArgs e)
        {
            string categoryName = Request.Form["categoryname"];
            string icon = Request.Form["icon"];
            _categoryDal.Add(new Category
            {
                CategoryName = categoryName,
                Picture = _imagePath + categoryImage.Value,
                Icon = icon
            });

            End("Category Added!");
        }

        protected void btnDelete_OnServerClick(object sender, EventArgs e)
        {
            string categoryName = Request.Form["categoryname"];
            int categoryId = _categoryDal.GetCategoryID(categoryName);

            _categoryDal.Delete(new Category
            {
                CategoryID = categoryId,
            });

            End("Category Deleted!");
        }

        private void End(string message)
        {
            lblCategory.Visible = true;
            lblCategory.InnerText = message;
            LoadCategories();
        }

        protected void btnUpdate_OnServerClick(object sender, EventArgs e)
        {
            string categoryName = Request.Form["categoryname"];
            string icon = Request.Form["icon"];
            int categoryId = _categoryDal.GetCategoryID(categoryName);

            _categoryDal.Update(new Category
            {
                CategoryID = categoryId,
                CategoryName = categoryName,
                Picture = _imagePath + categoryImage.Value,
                Icon = icon,
            });

            End("Category Updated!");
        }
    }
}