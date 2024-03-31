using Microsoft.EntityFrameworkCore;
using System;
using System.IO;
using Xamarin.Forms;
using InfoMovie.Models;

namespace InfoMovie.Helpers {
  public class MoviesDatabaseContext : DbContext {
    public DbSet<Movie> Movies { get; set; }

    private const string databaseName = "movies.db";

    protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder) {
      try {
        string databasePath = GetDatabasePath();
        optionsBuilder.UseSqlite($"Filename={databasePath}");
      } catch (Exception ex) {
        Console.WriteLine($"An error occurred while configuring the database: {ex.Message}");
      }
    }

    private string GetDatabasePath() {
      switch (Device.RuntimePlatform) {
        case Device.iOS:
          SQLitePCL.Batteries_V2.Init();
          return Path.Combine(Environment.GetFolderPath(Environment.SpecialFolder.MyDocuments),
                              "..", "Library", databaseName);
        case Device.Android:
          return Path.Combine(Environment.GetFolderPath(Environment.SpecialFolder.Personal),
                              databaseName);
        default:
          throw new NotImplementedException("Platform not supported");
      }
    }
  }
}