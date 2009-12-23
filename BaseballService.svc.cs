using System;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.ServiceModel.Activation;
using System.ServiceModel.Web;
using System.Collections;
using System.Collections.Generic;

namespace Baseball
{
    [ServiceContract(Namespace = "")]
    [AspNetCompatibilityRequirements(RequirementsMode = AspNetCompatibilityRequirementsMode.Allowed)]
    public class BaseballService
    {
        private IList<string> _movies; 
        public BaseballService()
        {
            _movies = new List<string>()  {"Avalon"
                                            , "Star Wars"
                                            , "Return of the Jedi"
                                            , "Lord of the Rings"
                                            , "The Hobbit"
                                            , "Raiders of the Lost Ark"
                                            , "The Terminator"
                                            };
        }
        // Add [WebGet] attribute to use HTTP GET
        [OperationContract]
        public void DoWork()
        {
            // Add your operation implementation here
            return;
        }

        // Add more operations here and mark them with [OperationContract]
        [OperationContract]
        [WebGet]
        public static double GetBattingAverage(int ab, int hits)
        {
            return hits / ab;
        }

        [OperationContract]
        public string[] GetSuggestions(string prefixText, int count)
        {
            var moviesQuery = (from movie in _movies
                                where movie.StartsWith(prefixText, StringComparison.CurrentCultureIgnoreCase)
                                select movie)
                                .Take(count);
            return moviesQuery.ToArray();
        }

    }
}
