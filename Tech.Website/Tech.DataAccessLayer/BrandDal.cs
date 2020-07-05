using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Tech.WebClass;

namespace Tech.DataAccessLayer
{
    public class BrandDal:IBrandDal
    {
        public List<object> GetBrands()
        {
            using (TechContext context = new TechContext())
            {
                IQueryable<object> brandList = (from p in context.Products
                    join brand in context.Brands on p.BrandID equals brand.BrandID
                    select new {brand.BrandName,brand.BrandID} into x
                        group x by new{x.BrandID, x.BrandName} into b
                        select  new
                        {
                            BrandID = b.Key.BrandID,
                            Name = b.Key.BrandName,
                            BrandCount = b.Select(x=>x.BrandID).Count(),
                            DisplayField = b.Key.BrandName + " (" +  b.Select(x => x.BrandID).Count() + ")",
                        }
                        );
                List<object> list = new List<object>(brandList);
                return list;
            }
        }

        public List<Brand> GetBrandsName()
        {
            using (TechContext context = new TechContext())
            {
                var brandsList = context.Brands.ToList();

                return brandsList;
            }
        }

        public List<Brand> LatestBrands(int piece)
        {
            using (TechContext context = new TechContext())
            {
                var latestBrands = (from i in context.Brands
                    orderby i.BrandID descending
                    select i).Take(piece).ToList();

                return latestBrands;
            }
        }

        public int GetID(string brandName)
        {
            int ID = 0;
            using (TechContext context = new TechContext())
            {
                var brandID = (from brand in context.Brands where brand.BrandName == brandName select brand.BrandID);
                foreach (var i in brandID)
                {
                    ID += i;  
                }

                return ID;
            }
        }

        public void Add(Brand brand)
        {
            using (TechContext context = new TechContext())
            {
                var entity = context.Entry(brand);
                entity.State = EntityState.Added;
                context.SaveChanges();
            }
        }

        public void Delete(Brand brand)
        {
            using (TechContext context = new TechContext())
            {
                var entity = context.Entry(brand);
                entity.State = EntityState.Deleted;
                context.SaveChanges();
            }
        }

        public void Update(Brand brand)
        {
            using (TechContext context = new TechContext())
            {
                var entity = context.Entry(brand);
                entity.State = EntityState.Modified;
                context.SaveChanges();
            }
        }
    }
}
