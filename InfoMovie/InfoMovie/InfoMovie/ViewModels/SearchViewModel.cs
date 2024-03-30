using System;
using System.Collections.ObjectModel;
using System.Linq;
using System.Windows.Input;
using InfoMovie.Helpers;
using InfoMovie.Models;
using InfoMovie.Views;

namespace InfoMovie.ViewModels
{
    public class SearchViewModel : BaseViewModel
    {
        public ObservableCollection<Movie> Movies { get; set; }

        private string _searchQuery;
        public string SearchQuery
        {
            get { return _searchQuery; }
            set { SetProperty(ref _searchQuery, value); }
        }

        private string _selectedCriteria;
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
                    _selectedMovie = null;
                    OnPropertyChanged(nameof(SelectedMovie));
                }
            }
        }

        public ObservableCollection<Movie> SearchResults { get; set; }

        public ICommand SearchCommand { get; private set; }
        public ICommand MovieSelectedCommand { get; private set; }

        public SearchViewModel()
        {
            SearchResults = new ObservableCollection<Movie>();
            PlaceholderText = "Enter movie title";
            Movies = new ObservableCollection<Movie>();
            LoadMovies();

            SearchCommand = new RelayCommand<object>(ExecuteSearch);
            MovieSelectedCommand = new RelayCommand<Movie>(ShowMovieDetail);
        }

        private async void LoadMovies()
        {
            var movies = await App.DataBase.GetMoviesAsync();
            foreach (var movie in movies)
            {
                Movies.Add(movie);
            }
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
            if (string.IsNullOrWhiteSpace(SearchQuery))
            {
                // Если строка поиска пуста, отобразить все фильмы
                SearchResults.Clear();
                foreach (var movie in Movies)
                {
                    SearchResults.Add(movie);
                }
            }
            else
            {
                // Фильтруем фильмы по запросу и выбранному критерию
                SearchResults.Clear();
                foreach (var movie in Movies)
                {
                    // Проверяем, содержит ли выбранный критерий фильма строку поиска
                    switch (SelectedCriteria)
                    {
                        case "Title":
                            if (movie.Title.IndexOf(SearchQuery, StringComparison.OrdinalIgnoreCase) >= 0)
                            {
                                SearchResults.Add(movie);
                            }
                            break;
                        case "Genre":
                            if (movie.Genre.IndexOf(SearchQuery, StringComparison.OrdinalIgnoreCase) >= 0)
                            {
                                SearchResults.Add(movie);
                            }
                            break;
                        case "Actor":
                            if (movie.Actors.IndexOf(SearchQuery, StringComparison.OrdinalIgnoreCase) >= 0)
                            {
                                SearchResults.Add(movie);
                            }
                            break;
                    }
                }
            }
        }


        private async void ShowMovieDetail(Movie movie)
        {
            MovieDetailPage detailPage = new MovieDetailPage(movie);

            await App.Current.MainPage.Navigation.PushAsync(detailPage);
        }

    }
}
