using Model;
using RestSharp;
using System.Collections.Generic;
using System.Configuration;
using Newtonsoft.Json;
using System.Net;
using System.IO;

namespace DataLayer
{
    public class UcastnikRepository
    {
        private string _resource = "ucastniks";
        private string Resource
        {
            get { return _resource; }
            set { _resource = value; }
        }
        private IRestClient _client;
        private IRestClient Client 
        {
            get { return _client; }
            set { _client = value; }
        }

       
        public UcastnikRepository()
        {
            var url = ConfigurationManager.AppSettings["BayUrl"];
            Client = new RestClient(url); //TODO Later introduce some solid dependency injection
        }

        public UcastnikRepository(IRestClient client)
        {
            Client = client;
        }

        public Ucastnik GetById(int id) 
        {
            var req = new RestRequest(Resource  + "/{id}", Method.GET);
            req.RequestFormat = DataFormat.Json;
            req.AddUrlSegment("id",id.ToString());

            var res = Client.Execute<Ucastnik>(req);
            
            return res.Data;
        }

        public List<Ucastnik> GetAll()
        {

            var req = new RestRequest(Resource , Method.GET);
            req.RequestFormat = DataFormat.Json;
            
            var res = Client.Execute<List<Ucastnik>>(req);
      
            return res.Data;
        }

        public bool Add(Ucastnik ucastnik)
        {
         //var req = new RestRequest(Resource, Method.POST);
         //req.RequestFormat = DataFormat.Json;
    
         //var customSerializer =  new Newtonsoft.Json.JsonSerializer
         //   {
         //       NullValueHandling = Newtonsoft.Json.NullValueHandling.Ignore
         //   };

            
         ////req.JsonSerializer = (RestSharp.Serializers.ISerializer)customSerializer;
         ////req.AddParameter("commit", "Create Ucastnik");
         ////var ser = new RestSharp.Serializers.JsonSerializer() { RootElement="ucastnik"};

         ////req.JsonSerializer = ser;
         ////req.AddBody(ucastnik);
         ////var json =Newtonsoft.Json.Converters

         //var set = new JsonSerializerSettings()
         //   {
         //       NullValueHandling = NullValueHandling.Ignore,
                
         //   };

         //var ser = JsonConvert.SerializeObject(ucastnik, set) ;

    
         ////req.RootElement = "ucastnik";
         //req.AddObject(ucastnik);
         //// req.AddParameter("commit", "Create Ucastnik");
         //var res = Client.Execute(req);
         //return ("200" == res.StatusCode.ToString());

          HttpWebRequest req = (HttpWebRequest)WebRequest.Create("http://whales-on-rails-c9-lubson.c9.io/ucastniks"+".json");
          req.ContentType = "application/json; charset=utf-8";
          req.Method = "POST";
          var set = new JsonSerializerSettings()
             {
                 NullValueHandling = NullValueHandling.Ignore,
             };
          var ser = JsonConvert.SerializeObject(ucastnik, set) ;
          var sw = new StreamWriter(req.GetRequestStream());
          sw.Write(ser);
          sw.Flush();
          sw.Close();



          HttpWebResponse res = (HttpWebResponse)req.GetResponse();
          return true;
        }
    }
}
