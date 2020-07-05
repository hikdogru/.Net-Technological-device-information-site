using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Tech.WebClass;

namespace Tech.DataAccessLayer
{
    public class FeatureDal : IFeatureDal
    {
        public List<Feature> GetFeature()
        {
            using (TechContext context = new TechContext())
            {
                var featureList = (from i in context.Features select i).ToList();
                return featureList;
            }
        }

        public List<object> GetFeatureDetails()
        {
            using (TechContext context = new TechContext())
            {
                IQueryable<object> featureDetailsList = (from p in context.Products
                                          join detail in context.FeatureDetails on p.ProductID equals detail.ProductID
                                          join feature in context.Features on detail.FeatureID equals feature.FeatureID  
                                          select new
                                          {
                                              ProductName = p.ProductName,
                                              Feature = feature.FeatureName,
                                              Value = detail.FeatureValue,

                                          }
                    );
                List<object> featureList = new List<object>(featureDetailsList);
                return featureList;




            }
        }

        public void Add(FeatureDetail featureDetail)
        {
            using (TechContext context = new TechContext())
            {
                var entity = context.Entry(featureDetail);
                entity.State = EntityState.Added;
                context.SaveChanges();
            }
        }

        public void Delete(FeatureDetail featureDetail)
        {
            using (TechContext context = new TechContext())
            {
                var entity = context.Entry(featureDetail);
                entity.State = EntityState.Deleted;
                context.SaveChanges();
            }
        }

        public void Update(FeatureDetail featureDetail)
        {
            using (TechContext context = new TechContext())
            {
                var entity = context.Entry(featureDetail);
                entity.State = EntityState.Modified;
                context.SaveChanges();
            }
        }

        public int GetFeatureId(int productId , string featureValue)
        {
            int ID = 0;
            using (TechContext context = new TechContext())
            {
                var featureId = (from i in context.FeatureDetails
                    where i.FeatureValue == featureValue && i.ProductID == productId
                                 select i.ID);
                foreach (var i in featureId)
                {
                    ID += i;
                }

                return ID;
            }
        }

        public int GetFeatureId(int productId, int featureId, string featureValue = "")
        {
            int ID = 0;
            using (TechContext context = new TechContext())
            {
                var featureID = (from i in context.FeatureDetails
                    where i.FeatureID == featureId && i.ProductID == productId
                    select i.ID);
                foreach (var i in featureID)
                {
                    ID += i;
                }

                return ID;
            }
        }

        public int GetFeature(string featureName)
        {
            int ID = 0;
            using (TechContext context = new TechContext())
            {
                var featureID = (from i in context.Features
                    where i.FeatureName == featureName
                    select i.FeatureID);
                foreach (var i in featureID)
                {
                    ID += i;
                }

                return ID;
            }
        }
    }
}
