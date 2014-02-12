using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Newtonsoft.Json;
using RestSharp;


namespace Model
{
    
    public class Ucastnik
    {
        [JsonProperty(PropertyName = "id")]
        public int? Id { get; set; }
        
        [JsonProperty(PropertyName = "jmeno")]
        public string Jmeno { get; set; }

        [JsonProperty(PropertyName = "prijmeni")]
        public string Prijmeni { get; set; }
        
        [JsonProperty(PropertyName = "narozen")]
        public DateTime? Narozen { get; set; }

        [JsonProperty(PropertyName = "pohlavi")]
        public int? Pohlavi { get; set; }

        [JsonProperty(PropertyName = "created_at")]
        public DateTime? CreatedAt { get; set; }

        [JsonProperty(PropertyName = "updated_at")]
        public DateTime? UpdatedAt { get; set; }

        public override string ToString()
        {
            return Id + ": " + Jmeno + ", " + Prijmeni;
        }
    }
}
