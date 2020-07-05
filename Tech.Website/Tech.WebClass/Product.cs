using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Tech.WebClass
{
    public class Product
    {
        private int _productID;
        private string _productName;
        private int _categoryID;
        private decimal _averagePrice;
        private string _productFeatures;
        private string _productImage_1;
        private string _productImage_2;
        private string _productImage_3;

        public int ProductID { get; set; }
        public string ProductName { get; set; }
        public int CategoryID { get; set; }
        public int BrandID { get; set; }
        public decimal AveragePrice
        {
            get { return Convert.ToInt32(_averagePrice); }
            set { _averagePrice = Convert.ToInt32(value); }
        }

        public string ProductFeatures { get; set; }
        public string ProductImage_1 { get; set; }
        public string ProductImage_2 { get; set; }
        public string ProductImage_3 { get; set; }

        public List<FeatureDetail> FeatureDetails { get; set; }
        

       

       

    }
}
