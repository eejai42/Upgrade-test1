using System;
using System.ComponentModel;
using Newtonsoft.Json;
                        
namespace SSoTme.Default.Lib
{                            
    public partial class Photo
    {
        private void InitPoco()
        {
            
            this.PhotoId = Guid.NewGuid();
            
            this.Ratings = new BindingList<Rating>();
            

        }
        
        [JsonProperty(DefaultValueHandling = DefaultValueHandling.IgnoreAndPopulate, PropertyName = "PhotoId")]
        public Guid PhotoId { get; set; }
    
        [JsonProperty(DefaultValueHandling = DefaultValueHandling.IgnoreAndPopulate, PropertyName = "Name")]
        public String Name { get; set; }
    
        [JsonProperty(DefaultValueHandling = DefaultValueHandling.IgnoreAndPopulate, PropertyName = "Description")]
        public String Description { get; set; }
    
        [JsonProperty(DefaultValueHandling = DefaultValueHandling.IgnoreAndPopulate, PropertyName = "UserId")]
        public Nullable<Guid> UserId { get; set; }
    
        
        [JsonProperty(DefaultValueHandling = DefaultValueHandling.IgnoreAndPopulate, PropertyName = "Ratings")]
        public BindingList<Rating> Ratings { get; set; }
    }
}