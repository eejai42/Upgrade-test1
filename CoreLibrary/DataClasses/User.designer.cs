using System;
using System.ComponentModel;
using Newtonsoft.Json;
                        
namespace SSoTme.Default.Lib
{                            
    public partial class User
    {
        private void InitPoco()
        {
            
            this.UserId = Guid.NewGuid();
            
            this.Photos = new BindingList<Photo>();
            

        }
        
        [JsonProperty(DefaultValueHandling = DefaultValueHandling.IgnoreAndPopulate, PropertyName = "UserId")]
        public Guid UserId { get; set; }
    
        [JsonProperty(DefaultValueHandling = DefaultValueHandling.IgnoreAndPopulate, PropertyName = "Name")]
        public String Name { get; set; }
    
        [JsonProperty(DefaultValueHandling = DefaultValueHandling.IgnoreAndPopulate, PropertyName = "Description")]
        public String Description { get; set; }
    
        
        [JsonProperty(DefaultValueHandling = DefaultValueHandling.IgnoreAndPopulate, PropertyName = "Photos")]
        public BindingList<Photo> Photos { get; set; }
    }
}