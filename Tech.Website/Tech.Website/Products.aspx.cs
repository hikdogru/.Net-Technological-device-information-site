using System;
using System.Collections;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.DynamicData;
using System.Web.UI;
using System.Web.UI.WebControls;
using Tech.WebClass;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls.Expressions;
using Tech.DataAccessLayer;

namespace Tech.Website
{
    public partial class Products : System.Web.UI.Page
    {

        ProductDal _productDal = new ProductDal();
        CategoryDal _categoryDal = new CategoryDal();
        BrandDal _brandDal = new BrandDal();
        protected void Page_Load(object sender, EventArgs e)
        {

            ddlFiltre.Items[0].Attributes["disabled"] = "disabled";
            string categoryID = Request.QueryString["categoryID"];
            if (!String.IsNullOrEmpty(categoryID))
            {
                LoadProducts(categoryID);
            }

            if (!IsPostBack)
            {
                LoadCategories();
                LoadCategoryCounter();
                LoadBrands();

            }


        }

        private void LoadBrands()
        {
            var brandList = _brandDal.GetBrands();
            cbxBrands.DataSource = brandList;
            cbxBrands.DataTextField = "DisplayField";
            cbxBrands.DataValueField = "BrandID";
            cbxBrands.DataBind();

        }

        private void LoadCategoryCounter()
        {
            rptCategoryCount.DataSource = _categoryDal.CategoryCounter();
            rptCategoryCount.DataBind();

        }

        public void LoadProducts(string categoryId)
        {
            int id = int.Parse(categoryId);
            using (TechContext context = new TechContext())
            {

                var productList = context.Products.Where(p => p.CategoryID == id).ToList();
                productslv.DataSource = productList;
                productslv.DataBind();


                lvGridProduct.DataSource = productList;
                lvGridProduct.DataBind();
            }
        }



        //public override void VerifyRenderingInServerForm(Control control)
        //{
        //} // Form hatası vermesin diye ekledik.


        private void LoadCategories()
        {
            using (TechContext context = new TechContext())
            {
                var categoryList = context.Categories.ToList();
                categorySelect.DataSource = categoryList;
                categorySelect.DataTextField = "CategoryName";
                categorySelect.DataValueField = "CategoryID";

                categorySelect.DataBind();
                categorySelect.Items.Insert(0, "Select Category");

                categorySelect.Items[0].Attributes["disabled"] = "disabled";
                categorySelect.Items[0].Selected = true;


            }
        }

        protected void ddlFiltre_SelectedIndexChanged(object sender, EventArgs e)
        {

            string categoryID = Request.QueryString["categoryID"];
            int id = Convert.ToInt32(categoryID);

            if (ddlFiltre.Items[1].Selected)
            {
                productslv.DataSource = _productDal.SortProducts(id, 1);
                productslv.DataBind();

                lvGridProduct.DataSource = _productDal.SortProducts(id, 1);
                lvGridProduct.DataBind();
            }

            else if (ddlFiltre.Items[2].Selected)
            {

                productslv.DataSource = _productDal.SortProducts(id, 2);
                productslv.DataBind();

                lvGridProduct.DataSource = _productDal.SortProducts(id, 2);
                lvGridProduct.DataBind();


            }

            else if (ddlFiltre.Items[3].Selected)
            {
                productslv.DataSource = _productDal.SortProducts(id, 3);
                productslv.DataBind();

                lvGridProduct.DataSource = _productDal.SortProducts(id, 3);
                lvGridProduct.DataBind();


            }

            else if (ddlFiltre.Items[4].Selected)
            {

                productslv.DataSource = _productDal.SortProducts(id, 4);
                productslv.DataBind();

                lvGridProduct.DataSource = _productDal.SortProducts(id, 4);
                lvGridProduct.DataBind();
            }

            ddlFiltre.ClearSelection();
            ddlFiltre.Items[0].Selected = true;

        }


        protected void btnSearch_Click(object sender, EventArgs e)
        {

            int categoryId = (categorySelect.SelectedIndex);
            productslv.DataSource = _productDal.ProductSearch(tbxSearch.Text, categoryId);
            productslv.DataBind();

            lvGridProduct.DataSource = _productDal.ProductSearch(tbxSearch.Text, categoryId);
            lvGridProduct.DataBind();
            tbxSearch.Text = "";
            categorySelect.SelectedIndex = 0;
            categorySelect.Items[0].Attributes["disabled"] = "disabled";

        }


        protected void search_OnServerChange(object sender, EventArgs e)
        {
            string key = search.Value;
            rptCategoryCount.DataSource = _categoryDal.CategorySearch(key);
            rptCategoryCount.DataBind();

        }



        protected void cbxBrands_OnSelectedIndexChanged(object sender, EventArgs e)
        {
            string condition = string.Empty;
            foreach (ListItem brand in cbxBrands.Items)
            {
                condition += brand.Selected ? string.Format("'{0}',", brand.Text) : string.Empty;
            }

            if (!string.IsNullOrEmpty(condition))
            {
                string brandName = condition.Substring(0, condition.Length - 1);
                lbl.Text = brandName;
                var productList = _productDal.JoinProducts(brandName);

                productslv.DataSource = productList;
                productslv.DataBind();

                lvGridProduct.DataSource = productList;
                lvGridProduct.DataBind();
            }
        }

        protected void btnFilter_Click(object sender, EventArgs e)
        {

            int minPrice = int.Parse(Request.Form["pricemin"]);
            int maxPrice = int.Parse(Request.Form["pricemax"]);
            var averagePriceList = _productDal.GetAveragePriceList(minPrice, maxPrice);

            productslv.DataSource = averagePriceList;
            productslv.DataBind();
            lvGridProduct.DataSource = averagePriceList;
            lvGridProduct.DataBind();

        }

    }
}









