using System;
using System.Collections.ObjectModel;
using System.Linq;
using System.Threading.Tasks;
using System.Windows.Input;
using InfoMovie.Commands;
using InfoMovie.Helpers;
using InfoMovie.Models;
using InfoMovie.Views;
using Xamarin.Forms;

namespace InfoMovie.ViewModels {
  public class SearchViewModel : BaseViewModel {
    public ObservableCollection<Movie> Movies { get; set; }
    public ObservableCollection<Movie> DisplayedMovies { get; set; }

    private int _pageNumber = 0;
    public int PageNumber {
      get { return _pageNumber; }
      set { SetProperty(ref _pageNumber, value); }
    }

    private string _searchQuery;
    public string SearchQuery {
      get { return _searchQuery; }
      set { SetProperty(ref _searchQuery, value); }
    }

    private string _selectedCriteria = "Title";
    public string SelectedCriteria {
      get { return _selectedCriteria; }
      set {
        SetProperty(ref _selectedCriteria, value);
        UpdatePlaceholderText();
      }
    }

    private string _placeholderText;
    public string PlaceholderText {
      get { return _placeholderText; }
      set { SetProperty(ref _placeholderText, value); }
    }

    private Movie _selectedMovie;
    public Movie SelectedMovie {
      get { return _selectedMovie; }
      set {
        SetProperty(ref _selectedMovie, value);
        if (_selectedMovie != null) {
          ShowMovieDetail(_selectedMovie);
        }
      }
    }

    public ICommand LoadMoviesCommand { get; }
    public ICommand LoadMoreMoviesCommand { get; }
    public ICommand SearchCommand { get; private set; }
    public ICommand MovieSelectedCommand { get; private set; }
    public ICommand LoadMoreCommand { get; private set; }

    public SearchViewModel() {
      PlaceholderText = "Enter movie title";

      DisplayedMovies = new ObservableCollection<Movie>();
      Movies = new ObservableCollection<Movie>();
      SearchCommand = new Command(ExecuteSearch);
      MovieSelectedCommand = new Command<Movie>(ShowMovieDetail);
      LoadMoreMoviesCommand = new LoadMoreMoviesCommand(this);
      LoadMoreCommand = new Command(() => LoadMoreMoviesCommand.Execute(this));
      LoadMoviesCommand = new LoadMoviesCommand(this);

      LoadMoviesCommand.Execute(this);
    }

    private void UpdatePlaceholderText() {
      PlaceholderText = SelectedCriteria switch {
        "Actor" => "Enter actor name",
        "Genre" => "Enter genre",
        _ => "Enter movie title",
      };
    }

    private void ExecuteSearch() {
      DisplayedMovies.Clear();

      if (Movies == null || SearchQuery == null)
        return;

      var moviesToDisplay = Movies.Where(movie => {
        return SelectedCriteria switch {
          "Title" => movie.Title?.IndexOf(SearchQuery, StringComparison.OrdinalIgnoreCase) >= 0,
          "Genre" => movie.Genre?.IndexOf(SearchQuery, StringComparison.OrdinalIgnoreCase) >= 0,
          "Actor" => movie.Actors?.IndexOf(SearchQuery, StringComparison.OrdinalIgnoreCase) >= 0,
          _ => false,
        };
      });

      foreach (var movie in moviesToDisplay) {
        DisplayedMovies.Add(movie);
      }
    }

    private async void ShowMovieDetail(Movie movie) {
      MovieDetailPage detailPage = new MovieDetailPage(movie);
      await App.Current.MainPage.Navigation.PushAsync(detailPage);
    }
  }
}