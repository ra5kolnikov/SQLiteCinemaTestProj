//using InfoMovie;
//using Newtonsoft.Json;
//using SQLite;
//using System;
//using System.Collections.Generic;
//using System.IO;
//using System.Reflection;
//using System.Threading.Tasks;
//using Xamarin.Forms;
//using InfoMovie.Models;

//public class DataBase
//{
//    private readonly string _dbPath;
//    private readonly SQLiteAsyncConnection _database;

//    public DataBase()
//    {
//        _dbPath = GetDatabasePath();
//        _database = new SQLiteAsyncConnection(_dbPath);
//        _database.DropTableAsync<Movie>();
//        _database.CreateTableAsync<Movie>().Wait();
//        ReadFromJSON();
//    }

//    public Task<List<Movie>> GetMoviesAsync()
//    {
//        return _database.Table<Movie>().ToListAsync();
//    }

//    private static string GetDatabasePath()
//    {
//        string dbPath = string.Empty;
//        switch (Device.RuntimePlatform)
//        {
//            case Device.Android:
//                dbPath = Path.Combine(Environment.GetFolderPath(Environment.SpecialFolder.Personal), "InfoMovie.db3");
//                break;
//            case Device.iOS:
//                dbPath = Path.Combine(Environment.GetFolderPath(Environment.SpecialFolder.Personal), "..", "Library", "InfoMovie.db3");
//                break;
//            case Device.UWP:
//                dbPath = Path.Combine(Environment.GetFolderPath(Environment.SpecialFolder.LocalApplicationData), "InfoMovie.db3");
//                break;
//        }
//        return dbPath;
//    }

//    private void ReadFromJSON()
//    {
//        using (SQLiteConnection connection = new SQLiteConnection(_dbPath))
//        {
//            connection.CreateTable<Movie>();

//            string fileName = "movies.json";
//            List<Movie> movies = new List<Movie>();
//            var assembly = typeof(App).GetTypeInfo().Assembly;
//            Stream stream = assembly.GetManifestResourceStream($"{assembly.GetName().Name}.{fileName}");

//            using (var reader = new StreamReader(stream))
//            {
//                var jsonString = reader.ReadToEnd();

//                movies = JsonConvert.DeserializeObject<List<Movie>>(jsonString);
//            }

//            foreach (var movie in movies)
//            {
//                var existingMovie = connection.Table<Movie>().FirstOrDefault(m => m.Id == movie.Id);
//                if (existingMovie == null)
//                {
//                    connection.Insert(movie);
//                }
//            }
//        }
//    }

//}
