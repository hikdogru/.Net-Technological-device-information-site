using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Tech.WebClass;

namespace Tech.DataAccessLayer
{
    interface IProductDal
    {
        void ProductAdd(Product product);
        void ProductUpdate(Product product);
        void ProductDelete(Product product);
        int GetProductID(string productName, string productFeatures);
        int GetProductID(string productName);
        List<Product> SortProducts(int id, int index);
        List<Product> ProductGetAll();
        List<object> JoinProducts();
        List<object> GetProductDetails(string id);
        List<Product> JoinProducts(string brandName);
        List<Product> ProductSearch(string key, int id);
        List<Product> LatestProducts(int piece);
        List<Product> GetProductName();
        List<Product> GetAveragePriceList(int min, int max);
        List<Product> GetRandomProducts(int piece);
    }
}
