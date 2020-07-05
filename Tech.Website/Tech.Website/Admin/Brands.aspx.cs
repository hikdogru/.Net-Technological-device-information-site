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
    public partial class Brands : System.Web.UI.Page
    {
        BrandDal _brandDal = new BrandDal();
        string _imagePath = @"MyWebSite\assets\img\brand\";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadBrands();
            }
        }

        private void LoadBrands()
        {
            var brandList = _brandDal.GetBrandsName();
            var latestBrands = _brandDal.LatestBrands(3);

            rptBrand.DataSource = brandList;
            rptBrand.DataBind();

            rptNewBrands.DataSource = latestBrands;
            rptNewBrands.DataBind();
        }

        protected void btnSave_OnServerClick(object sender, EventArgs e)
        {
            string brandName = Request.Form["brandname"];

            _brandDal.Add(new Brand
            {
                BrandName = brandName,
                Logo = _imagePath + brandLogo.Value
            });

            End("Brand Added!");
        }

        private void End(string message)
        {
            lblBrand.Visible = true;
            lblBrand.InnerText = message;
            LoadBrands();
        }

        protected void btnDelete_OnServerClick(object sender, EventArgs e)
        {
            string brandName = Request.Form["brandname"];
            int brandId = _brandDal.GetID(brandName);

            _brandDal.Delete(new Brand
            {
                BrandID = brandId,
            });

            End("Product Deleted!");
        }

        protected void btnUpdate_OnServerClick(object sender, EventArgs e)
        {
            string brandName = Request.Form["brandname"];
            int brandId = _brandDal.GetID(brandName);

            _brandDal.Update(new Brand
            {
                BrandID = brandId,
                BrandName = brandName,
                Logo = _imagePath + brandLogo.Value
            });

            End("Product Updated!");
        }
    }
}