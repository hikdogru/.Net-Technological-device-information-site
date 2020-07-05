using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Tech.WebClass;

namespace Tech.DataAccessLayer
{
    public interface IFeatureDal
    {
        List<Feature> GetFeature();
        List<object> GetFeatureDetails();
        void Add(FeatureDetail featureDetail);
        void Delete(FeatureDetail featureDetail);
        void Update(FeatureDetail featureDetail);
        int GetFeatureId(int productId, string featureValue);
        int GetFeatureId(int productId, int featureId , string featureValue);
        int GetFeature(string featureName);
    }
}
