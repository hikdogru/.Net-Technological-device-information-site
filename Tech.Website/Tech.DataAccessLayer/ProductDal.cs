using System;
using System.Collections;
using System.Collections.Generic;
using System.Data.Entity;
using System.Data.Entity.Core.Common.CommandTrees;
using System.Data.Entity.Infrastructure.Interception;
using System.Linq;
using System.Net.Sockets;
using System.Text;
using System.Threading.Tasks;
using Tech.WebClass;

namespace Tech.DataAccessLayer
{
    public class ProductDal : IProductDal
    {
        public List<Product> ProductGetAll()
        {
            using (TechContext context = new TechContext())
            {
                return context.Products.ToList();

            }
        }

        public List<object> JoinProducts()
        {
            using (TechContext context = new TechContext())
            {
                IQueryable<object> productList = (from p in context.Products
                                                  join c in context.Categories on p.CategoryID equals c.CategoryID
                                                  join b in context.Brands on p.BrandID equals b.BrandID
                                                  where (p.ProductID != null)
                                                  select new
                                                  {
                                                      Name = p.ProductName,
                                                      Category = c.CategoryName,
                                                      Brand = b.BrandName,
                                                      AveragePrice = p.AveragePrice,
                                                      ProductFeatures = p.ProductFeatures,
                                                      Image = p.ProductImage_1,
                                                      Image2 = p.ProductImage_2,
                                                      Image3 = p.ProductImage_3,
                                                  });

                List<object> list = new List<object>(productList);
                return list;
            }



        }

        public List<object> GetProductDetails(string id)
        {

            using (TechContext context = new TechContext())
            {
                int productID = int.Parse(id);
                IQueryable<object> productDetails = (from i in context.Products
                                                     join j in context.FeatureDetails
                                                         on i.ProductID equals j.ProductID
                                                     where i.ProductID == productID
                                                     select new
                                                     {
                                                         i.AveragePrice,
                                                         i.ProductImage_1,
                                                         i.ProductImage_2,
                                                         i.ProductImage_3,
                                                         i.ProductName,
                                                         j.Feature.FeatureName,
                                                         j.FeatureValue
                                                     });

                List<object> list = new List<object>(productDetails);
                return list;
            }
        }

        public List<Product> JoinProducts(string brandName)
        {
            using (TechContext context = new TechContext())
            {

                var productList = (from i in context.Products
                                   join brand in context.Brands on i.BrandID equals brand.BrandID
                                   where brandName.Contains(brand.BrandName)
                                   select i).ToList();
                return productList;



            }
        }

        public void ProductAdd(Product product)
        {
            using (TechContext context = new TechContext())
            {
                var entity = context.Entry(product);
                entity.State = EntityState.Added;
                context.SaveChanges();
            }
        }

        public void ProductUpdate(Product product)
        {
            using (TechContext context = new TechContext())
            {
                var entity = context.Entry(product);
                entity.State = EntityState.Modified;
                context.SaveChanges();
            }
        }

        public void ProductDelete(Product product)
        {
            using (TechContext context = new TechContext())
            {
                var entity = context.Entry(product);
                entity.State = EntityState.Deleted;
                context.SaveChanges();

            }


        }

        public int GetProductID(string productName, string productFeatures)
        {
            int ID = 0;
            using (TechContext context = new TechContext())
            {
                var productID = (from product in context.Products
                                 where product.ProductName == productName && product.ProductFeatures == productFeatures
                                 select product.ProductID);

                foreach (var i in productID)
                {
                    ID += i;
                }

                return ID;
            }
        }

        public int GetProductID(string productName)
        {
            int ID = 0;
            using (TechContext context = new TechContext())
            {
                var productID = (from product in context.Products
                                 where product.ProductName == productName
                                 select product.ProductID);

                foreach (var i in productID)
                {
                    ID += i;
                }

                return ID;
            }
        }
        public List<Product> ProductSearch(string key, int id)
        {
            using (TechContext context = new TechContext())
            {
                return context.Products.Where(p => p.CategoryID == id & p.ProductName.Contains(key)).ToList();
            }
        }

        public List<Product> SortProducts(int id, int index)
        {
            using (TechContext context = new TechContext())
            {
                if (index == (int)Sort.atoZ)
                {
                    var filtreProductList = (from product in context.Products
                                             where product.CategoryID == id
                                             orderby product.ProductName
                                             select product).ToList();
                    return filtreProductList;
                }

                else if (index == (int)Sort.ztoA)
                {
                    var filtreProductList = (from product in context.Products
                                             where product.CategoryID == id
                                             orderby product.ProductName descending
                                             select product).ToList();
                    return filtreProductList;
                }

                else if (index == (int)Sort.hightoLow)
                {
                    var filtreProductList = (from product in context.Products
                                             where product.CategoryID == id
                                             orderby product.AveragePrice descending
                                             select product).ToList();
                    return filtreProductList;
                }

                else if (index == (int)Sort.lowtoHigh)
                {
                    var filtreProductList = (from product in context.Products
                                             where product.CategoryID == id
                                             orderby product.AveragePrice
                                             select product).ToList();
                    return filtreProductList;
                }

                return null;

            }
        }

        public List<Product> LatestProducts(int piece)
        {
            using (TechContext context = new TechContext())
            {
                var productList = (from i in context.Products orderby i.ProductID descending select i).Take(piece).ToList();
                return productList;
            }


        }

        public List<Product> GetProductName()
        {
            using (TechContext context = new TechContext())
            {
                var productList = (from i in context.Products select i).ToList();
                return productList;
            }
        }

        public List<Product> GetAveragePriceList(int min, int max)
        {
            using (TechContext context = new TechContext())
            {
                var averagePriceList =
                    context.Products.Where(p => p.AveragePrice >= min && p.AveragePrice < max).ToList();
                return averagePriceList;
            }
        }

        public List<Product> GetRandomProducts(int piece)
        {
            using (TechContext context = new TechContext())
            {
                var randomProductList = context.Products.OrderBy(p => Guid.NewGuid()).Take(piece).ToList();
                return randomProductList;
            }
        }

        enum Sort
        {
            atoZ = 1,
            ztoA = 2,
            hightoLow = 3,
            lowtoHigh = 4

        }


    }
}
