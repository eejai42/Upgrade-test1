using System;
using System.ComponentModel;
using Newtonsoft.Json;
                        
namespace SSoTme.Default.Lib
{                            
    public partial class App
    {
        private void InitPoco()
        {
            
            this.AppId = Guid.NewGuid();
            

        }
        
        [JsonProperty(DefaultValueHandling = DefaultValueHandling.IgnoreAndPopulate, PropertyName = "AppId")]
        public Guid AppId { get; set; }
    
        [JsonProperty(DefaultValueHandling = DefaultValueHandling.IgnoreAndPopulate, PropertyName = "Name")]
        public String Name { get; set; }
    
        [JsonProperty(DefaultValueHandling = DefaultValueHandling.IgnoreAndPopulate, PropertyName = "Description")]
        public String Description { get; set; }
    
        
    }
}