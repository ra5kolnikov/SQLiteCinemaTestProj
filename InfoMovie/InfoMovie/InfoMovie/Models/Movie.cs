using Newtonsoft.Json;
using System.ComponentModel.DataAnnotations;

namespace InfoMovie.Models {
  public class Movie {
    [JsonProperty("Id")]
    [Key]
    public int Id { get; set; }
    [JsonProperty("Title")]
    public string Title { get; set; }
    [JsonProperty("Genre")]
    public string Genre { get; set; }
    [JsonProperty("Actors")]
    public string Actors { get; set; }
    [JsonProperty("ImageUrl")]
    public string ImageUrl { get; set; }
  }
}
