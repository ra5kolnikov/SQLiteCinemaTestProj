using System;
using System.Collections.ObjectModel;
using System.Linq;
using System.Threading.Tasks;
using System.Windows.Input;
using InfoMovie.Helpers;
using InfoMovie.Models;
using InfoMovie.Views;
using Xamarin.Forms;

namespace InfoMovie.ViewModels
{
    public class SearchViewModel : BaseViewModel
    {
        public ObservableCollection<Movie> Movies { get; set; }
        public ObservableCollection<Movie> DisplayedMovies { get; set; }

        private int _pageNumber = 0;
        private const int PageSize = 7;

        private string _searchQuery;
        public string SearchQuery
        {
            get { return _searchQuery; }
            set { SetProperty(ref _searchQuery, value); }
        }

        private string _selectedCriteria = "Title";
        public string SelectedCriteria
        {
            get { return _selectedCriteria; }
            set
            {
                SetProperty(ref _selectedCriteria, value);
                UpdatePlaceholderText();
            }
        }

        private string _placeholderText;
        public string PlaceholderText
        {
            get { return _placeholderText; }
            set { SetProperty(ref _placeholderText, value); }
        }

        private Movie _selectedMovie;
        public Movie SelectedMovie
        {
            get { return _selectedMovie; }
            set
            {
                SetProperty(ref _selectedMovie, value);
                if (_selectedMovie != null)
                {
                    ShowMovieDetail(_selectedMovie);
                }
            }
        }

        public ICommand SearchCommand { get; private set; }
        public ICommand MovieSelectedCommand { get; private set; }
        public ICommand LoadMoreCommand { get; private set; }

        public SearchViewModel()
        {
            DisplayedMovies = new ObservableCollection<Movie>();
            PlaceholderText = "Enter movie title";
            Movies = new ObservableCollection<Movie>();

            SearchCommand = new Command(ExecuteSearch);
            MovieSelectedCommand = new Command<Movie>(ShowMovieDetail);
            LoadMoreCommand = new Command(async () => await LoadMoreMovies(), CanLoadMore);

             _ = LoadMoviesAsync();
        }

        private async Task LoadMoviesAsync()
        {
            var postDatabaseHelper = new PostDatabaseHelper<MoviesDatabaseContext>();
            var movies = await postDatabaseHelper.GetMoviesAsync();
            Movies.Clear();
            foreach (var movie in movies)
            {
                Movies.Add(movie);
            }
            await LoadMoreMovies();
        }

        private async Task LoadMoreMovies()
        {
            await Task.Run(() =>
            {
                var moviesToDisplay = Movies.Skip(_pageNumber * PageSize).Take(PageSize);
                foreach (var movie in moviesToDisplay)
                {
                    Device.BeginInvokeOnMainThread(() => DisplayedMovies.Add(movie));
                }
                _pageNumber++;
            });
        }

        private void UpdatePlaceholderText()
        {
            switch (SelectedCriteria)
            {
                case "Actor":
                    PlaceholderText = "Enter actor name";
                    break;
                case "Genre":
                    PlaceholderText = "Enter genre";
                    break;
                default:
                    PlaceholderText = "Enter movie title";
                    break;
            }
        }

        private void ExecuteSearch()
        {
            DisplayedMovies.Clear();

            if (Movies == null || SearchQuery == null) return;

            var moviesToDisplay = Movies.Where(movie =>
            {
                return SelectedCriteria switch
                {
                    "Title" => movie.Title?.IndexOf(SearchQuery, StringComparison.OrdinalIgnoreCase) >= 0,
                    "Genre" => movie.Genre?.IndexOf(SearchQuery, StringComparison.OrdinalIgnoreCase) >= 0,
                    "Actor" => movie.Actors?.IndexOf(SearchQuery, StringComparison.OrdinalIgnoreCase) >= 0,
                    _ => false,
                };
            });

            foreach (var movie in moviesToDisplay)
            {
                DisplayedMovies.Add(movie);
            }
        }

        private async void ShowMovieDetail(Movie movie)
        {
            MovieDetailPage detailPage = new MovieDetailPage(movie);
            await App.Current.MainPage.Navigation.PushAsync(detailPage);
        }

        private bool CanLoadMore()
        {
            return string.IsNullOrWhiteSpace(SearchQuery);
        }
    }
}