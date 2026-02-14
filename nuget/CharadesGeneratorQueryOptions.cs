using System;
using System.Collections.Generic;
using System.Text;
using Newtonsoft.Json;

namespace APIVerve.API.CharadesGenerator
{
    /// <summary>
    /// Query options for the Charades Generator API
    /// </summary>
    public class CharadesGeneratorQueryOptions
    {
        /// <summary>
        /// Category: all, movies, books, songs, actions, animals, objects
        /// </summary>
        [JsonProperty("category")]
        public string Category { get; set; }
    }
}
