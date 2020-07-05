using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Net.Sockets;
using System.Text;
using System.Threading.Tasks;
using Tech.WebClass;

namespace Tech.DataAccessLayer
{
    public class CategoryDal : ICategoryDal
    {
        public void Update(Category category)
        {
            using (TechContext context = new TechContext())
            {
                var entity = context.Entry(category);
                entity.State = EntityState.Modified;
                context.SaveChanges();
            }
        }

        public int GetCategoryID(string categoryName)
        {
            int ID = 0;
            using (TechContext context = new TechContext())
            {
                var categoryID = (from category in context.Categories where category.CategoryName == categoryName select category.CategoryID
                );

                foreach (var i in categoryID)

                    ID += i;


                return ID;


            }
        }

        public List<Category> CategorySearch(string key)
        {
            using (TechContext context = new TechContext())
            {
                var categoryList = context.Categories.Where(c => c.CategoryName.Contains(key)).ToList();
                return categoryList;
            }
        }

        public List<Category> LatestCategories(int piece)
        {
            using (TechContext context = new TechContext())
            {
                var latestCategories = (from category in context.Categories
                        orderby category.CategoryID descending select category).Take(piece).ToList();
                
                return latestCategories;
            }
        }

        public List<object> CategoryCounter()
        {
            using (TechContext context = new TechContext())
            {
                IQueryable<object> categoryCount = from p in context.Products
                    join c in context.Categories
                        on p.CategoryID equals c.CategoryID
                    where (c.CategoryName != null)
                    select new { c.CategoryName, p.CategoryID, c.Icon } into x
                    group x by new { x.CategoryName, x.Icon, x.CategoryID } into g
                    select new
                    {
                        Name = g.Key.CategoryName,
                        Count = g.Select(x => x.CategoryID).Count(),
                        Icon = g.Key.Icon,
                        CategoryID = g.Key.CategoryID,

                    };

                List<object> list = new List<object>(categoryCount);
                return list;
            }
        }

        public List<Category> GetCategories()
        {
            using (TechContext context = new TechContext())
            {
                var categoryList = context.Categories.ToList();
                return categoryList;
            }
        }

        public void Add(Category category)
        {
            using (TechContext context = new TechContext())
            {
                var entity = context.Entry(category);
                entity.State = EntityState.Added;
                context.SaveChanges();
            }
        }

        public void Delete(Category category)
        {
            using (TechContext context = new TechContext())
            {
                var entity = context.Entry(category);
                entity.State = EntityState.Deleted;
                context.SaveChanges();
            }
        }
    }
}
