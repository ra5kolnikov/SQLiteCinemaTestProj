using Microsoft.EntityFrameworkCore;
using System;
using InfoMovie.Models;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Threading.Tasks;
using Newtonsoft.Json;

namespace InfoMovie.Infrastructure {
  public class MovieDatabaseService<T>
      where T : MoviesDatabaseContext {
    protected MoviesDatabaseContext CreateContext() {
      MoviesDatabaseContext movieDatabaseContext = (T)Activator.CreateInstance(typeof(T));
      movieDatabaseContext.Database.EnsureCreated();
      movieDatabaseContext.Database.Migrate();
      return movieDatabaseContext;
    }

#region data access
    public async Task AddOrUpdateMoviesAsync() {
      using (var context = CreateContext()) {
        List<Movie> movies;
        var assembly = typeof(App).Assembly;
        string resourceName = $"{nameof(InfoMovie)}.movies.json";

        try {
          string json;
          using (Stream stream = assembly.GetManifestResourceStream(resourceName)) using (
              StreamReader reader = new StreamReader(stream)) {
            json = await reader.ReadToEndAsync();
          }

          if (string.IsNullOrEmpty(json)) {
            return;
          }

          movies = JsonConvert.DeserializeObject<List<Movie>>(json);
        } catch (Exception ex) {
          Console.WriteLine($"An error occurred: {ex.Message}");
          return;
        }

        foreach (var movie in movies) {
          var existingMovie = context.Movies.FirstOrDefault(m => m.Id == movie.Id);
          if (existingMovie == null) {
            context.Movies.Add(movie);
          } else {
            existingMovie.Id = movie.Id;
            existingMovie.Title = movie.Title;
            existingMovie.Genre = movie.Genre;
            existingMovie.Actors = movie.Actors;
            existingMovie.ImageUrl = movie.ImageUrl;
          }
        }
        await context.SaveChangesAsync();
      }
    }

    public async Task<List<Movie>> GetMoviesAsync() {
      using (var context = CreateContext()) {
        return await context.Movies.AsNoTracking()
            .OrderByDescending(movie => movie.Id)
            .ToListAsync();
      }
    }
#endregion
  }
}