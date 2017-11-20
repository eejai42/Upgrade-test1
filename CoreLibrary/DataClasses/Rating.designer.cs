using System;
using System.ComponentModel;
using Newtonsoft.Json;
                        
namespace SSoTme.Default.Lib
{                            
    public partial class Rating
    {
        private void InitPoco()
        {
            
            this.RatingId = Guid.NewGuid();
            

        }
        
        [JsonProperty(DefaultValueHandling = DefaultValueHandling.IgnoreAndPopulate, PropertyName = "RatingId")]
        public Guid RatingId { get; set; }
    
        [JsonProperty(DefaultValueHandling = DefaultValueHandling.IgnoreAndPopulate, PropertyName = "Name")]
        public String Name { get; set; }
    
        [JsonProperty(DefaultValueHandling = DefaultValueHandling.IgnoreAndPopulate, PropertyName = "Description")]
        public String Description { get; set; }
    
        [JsonProperty(DefaultValueHandling = DefaultValueHandling.IgnoreAndPopulate, PropertyName = "PhotoId")]
        public Nullable<Guid> PhotoId { get; set; }
    
        
    }
}