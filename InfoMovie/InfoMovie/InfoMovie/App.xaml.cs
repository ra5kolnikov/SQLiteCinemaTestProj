using InfoMovie.Views;
using Xamarin.Forms;
using InfoMovie.Helpers;
using System.Threading.Tasks;

namespace InfoMovie {
  public partial class App : Application {
    private static MoviesDatabaseContext database;

    public static MoviesDatabaseContext Database {
      get {
        database ??= new MoviesDatabaseContext();
        return database;
      }
    }

    public App() {
      InitializeComponent();
      Task.Run(async () => { await LoadDatabaseAsync(); });

      MainPage = new NavigationPage(new SearchPage());
    }

    private async Task LoadDatabaseAsync() {
      var postDatabaseHelper = new MovieDatabaseService<MoviesDatabaseContext>();
      await postDatabaseHelper.AddOrUpdateMoviessAsync();
    }
  }
}
