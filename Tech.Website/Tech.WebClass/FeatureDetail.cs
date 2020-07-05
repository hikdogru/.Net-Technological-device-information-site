using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Tech.WebClass
{
    public class FeatureDetail
    {
        
        public int ID { get; set; }
        
        public int ProductID { get; set; }
        
        public Product Product { get; set; }
        
        public int FeatureID { get; set; }
        public Feature Feature { get; set; }
        public string FeatureValue { get; set; }
        
    }
}
