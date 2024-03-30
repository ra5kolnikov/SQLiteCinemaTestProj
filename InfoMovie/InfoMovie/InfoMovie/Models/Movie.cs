using SQLite;

namespace InfoMovie.Models
{
    public class Movie
    {
        [PrimaryKey, AutoIncrement]
        public int Id { get; set; }
        public string Title { get; set; }
        public string Genre { get; set; }
        public string Actors { get; set; }
        public string ImageUrl { get; set; }
    }

}