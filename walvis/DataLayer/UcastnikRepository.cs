using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Model;
using System.Net;
using System.IO;
using RestSharp;
using System.Diagnostics;


namespace DataLayer
{
    public class UcastnikRepository
    {
        public static Ucastnik GetById(int id) 
        {
            //HttpWebRequest req = (HttpWebRequest)WebRequest.Create("http://domis-c9-lubson.c9.io/ucastniks"+".json");
            //req.ContentType = "application/json; charset=utf-8";
            //HttpWebResponse res = (HttpWebResponse)req.GetResponse();
            //Stream resStream = res.GetResponseStream();
            //var streamReader = new StreamReader(resStream);
            //string content = streamReader.ReadToEnd();
            //System.Console.WriteLine(content);
            //return null;

            var client = new RestClient("http://domis-c9-lubson.c9.io");

            var req = new RestRequest("ucastniks/{id}", Method.GET);
            
            req.RequestFormat = DataFormat.Json;
            req.AddUrlSegment("id",id.ToString());

       
            var res = client.Execute<Ucastnik>(req);
            
            return res.Data;
        }

        public static List<Ucastnik> GetAll()
        {

            var client = new RestClient("http://domis-c9-lubson.c9.io");

            var req = new RestRequest("ucastniks", Method.GET);

            req.RequestFormat = DataFormat.Json;
            
            var res = client.Execute<List<Ucastnik>>(req);
      
            return res.Data;
        }

        public static bool Add(Ucastnik ucastnik)
        {
         var client = new RestClient("http://domis-c9-lubson.c9.io");
         var req = new RestRequest("ucastniks", Method.POST);
         req.RequestFormat = DataFormat.Json;
         
         var u = new Ucastnik{Jmeno = "Lubson", Prijmeni = "Hupson", Narozen = DateTime.Now};
         //req.AddParameter("commit", "Create Ucastnik");
         req.AddObject(u, "Jmeno", "Prijmeni");

         var res = client.Execute(req);
         return ("200" == res.StatusCode.ToString());

        }
    }
}
