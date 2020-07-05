using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Tech.WebClass;

namespace Tech.DataAccessLayer
{
    interface IBrandDal
    {
        List<object> GetBrands();
        List<Brand> GetBrandsName();
        List<Brand> LatestBrands(int piece);
        int GetID(string brandName);
        void Add(Brand brand);
        void Delete(Brand brand);
        void Update(Brand brand);

    }
}
