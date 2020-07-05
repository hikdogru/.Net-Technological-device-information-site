using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Tech.WebClass;

namespace Tech.DataAccessLayer
{
    interface ICategoryDal
    {
        List<Category> GetCategories();
        void Add(Category category);
        void Delete(Category category);
        void Update(Category category);
        int GetCategoryID(string categoryName); 
        List<Category> CategorySearch(string key);
        List<Category> LatestCategories(int piece);
        List<object> CategoryCounter();
    }
}
