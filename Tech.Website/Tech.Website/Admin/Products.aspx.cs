using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using Tech.DataAccessLayer;
using Tech.WebClass;

namespace Tech.Website.Admin
{
    public partial class Products : System.Web.UI.Page
    {
        ProductDal _productDal = new ProductDal();
        CategoryDal _categoryDal = new CategoryDal();
        BrandDal _brandDal = new BrandDal();
        FeatureDal _featureDal = new FeatureDal();
        private string _imagePath = @"MyWebSite\assets\img\product\";

        
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                LoadProducts();
                LoadCategories();
                LoadProductName();
                LoadFeatureName();
                LoadFeatureDetails();
            }
        }

        private void LoadFeatureDetails()
        {
            var featureDetailsList = _featureDal.GetFeatureDetails();
            rptProductFeatures.DataSource = featureDetailsList;
            rptProductFeatures.DataBind();
        }

        private void LoadFeatureName()
        {
            var featureList = _featureDal.GetFeature();

            rptFeature.DataSource = featureList;
            rptFeature.DataBind();

        }

        private void LoadProductName()
        {
            var productList = _productDal.GetProductName();
            rptProductName.DataSource = productList;
            rptProductName.DataBind();
        }

        private void LoadCategories()
        {
            var categoryList = _categoryDal.GetCategories();
            rptCategory.DataSource = categoryList;
            rptCategory.DataBind();

            var brandList = _brandDal.GetBrandsName();
            rptBrand.DataSource = brandList;
            rptBrand.DataBind();
            
        }

        private void LoadProducts()
        {
            var productList = _productDal.JoinProducts();
            var latestProductList = _productDal.LatestProducts(4);

            rptProducts.DataSource = productList;
            rptProducts.DataBind();
            rptLatestProducts.DataSource = latestProductList;
            rptLatestProducts.DataBind();
        }

        protected void btnSave_OnServerClick(object sender, EventArgs e)
        {
            var categoryName = Request.Form["selectCategories"];
            var categoryID = _categoryDal.GetCategoryID(categoryName);

            var brandName = Request.Form["selectBrands"];
            var brandID = _brandDal.GetID(brandName);

            string productName = Request.Form["productname"];
            string averagePrice = Request.Form["averageprice"];
            string productFeatures = Request.Form["productfeatures"];

            _productDal.ProductAdd(new Product
            {
                ProductName = productName,
                CategoryID = categoryID,
                BrandID = brandID,
                AveragePrice = int.Parse(averagePrice),
                ProductFeatures = productFeatures,
                ProductImage_1 = _imagePath + categoryName + @"s\" + productimage1.Value,
                ProductImage_2 = _imagePath + categoryName + @"s\" + productimage2.Value,
                ProductImage_3 = _imagePath + categoryName + @"s\" + productimage3.Value,
            });

            LoadProducts();
            lblResult.Visible = true;
            lblResult.InnerText = "Product Added!";

        }

        protected void btnDelete_OnServerClick(object sender, EventArgs e)
        {
            string productName = Request.Form["productname"];
            string productFeatures = Request.Form["productfeatures"];


            _productDal.ProductDelete(new Product
            {
                ProductID = _productDal.GetProductID(productName, productFeatures),
            });

            LoadProducts();
            lblResult.Visible = true;
            lblResult.InnerText = "Product Deleted!";
        }

        protected void btnUpdate_OnServerClick(object sender, EventArgs e)
        {
            var categoryName = Request.Form["selectCategories"];
            var categoryID = _categoryDal.GetCategoryID(categoryName);

            var brandName = Request.Form["selectBrands"];
            var brandID = _brandDal.GetID(brandName);

            string productName = Request.Form["productname"];
            string averagePrice = Request.Form["averageprice"];
            string productFeatures = Request.Form["productfeatures"];

            _productDal.ProductUpdate(new Product
            {
                ProductID = _productDal.GetProductID(productName, productFeatures),
                ProductName = productName,
                CategoryID = categoryID,
                BrandID = brandID,
                AveragePrice = int.Parse(averagePrice),
                ProductFeatures = productFeatures,
                ProductImage_1 = _imagePath + categoryName + @"s\" + productimage1.Value,
                ProductImage_2 = _imagePath + categoryName + @"s\" + productimage2.Value,
                ProductImage_3 = _imagePath + categoryName + @"s\" + productimage3.Value,
            });
            LoadProducts();

            lblResult.Visible = true;
            lblResult.InnerText = "Product Updated!";
            
        }

        protected void btnFeatureSave_OnServerClick(object sender, EventArgs e)
        {
            string productName = Request.Form["productselectname"];
            string featureValue = Request.Form["featurevalue"];
            string productfeature = Request.Form["productfeature"];
            _featureDal.Add(new FeatureDetail
            {
                ProductID = _productDal.GetProductID(productName),
                FeatureID = _featureDal.GetFeature(productfeature),
                FeatureValue = featureValue,
            });

            LoadFeatureDetails();
            lblFeature.Visible = true;
            lblFeature.InnerText = "Product Feature added!";

        }

        protected void btnFeatureDelete_OnServerClick(object sender, EventArgs e)
        {
            string productName = Request.Form["productselectname"];
            string featureValue = Request.Form["featurevalue"]; 
            string productfeature = Request.Form["productfeature"];
            int productId = _productDal.GetProductID(productName);
            _featureDal.Delete(new FeatureDetail{
                ID = _featureDal.GetFeatureId(productId, featureValue),
            });

            LoadFeatureDetails();
            lblFeature.Visible = true;
            lblFeature.InnerText = "Product Feature deleted!";
        }

        protected void btnFeatureUpdate_OnServerClick(object sender, EventArgs e)
        {
            string productName = Request.Form["productselectname"];
            string featureValue = Request.Form["featurevalue"];
            string productfeature = Request.Form["productfeature"];
            int productId = _productDal.GetProductID(productName);

            _featureDal.Update(new FeatureDetail
            {
                ID = _featureDal.GetFeatureId(productId, _featureDal.GetFeature(productfeature)),
                ProductID = productId,
                FeatureID = _featureDal.GetFeature(productfeature),
                FeatureValue = featureValue,
            });

            LoadFeatureDetails();
            lblFeature.Visible = true;
            lblFeature.InnerText = "Product Feature updated!";

            //lblFeature.Visible = true;
            //lblFeature.InnerText = _featureDal.GetFeatureId(productId, _featureDal.GetFeature(productfeature)) + " "+ productId + _featureDal.GetFeature(productfeature);


        }
    }
}