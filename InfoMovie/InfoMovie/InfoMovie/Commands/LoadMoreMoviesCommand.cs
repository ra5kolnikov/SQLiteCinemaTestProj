using System;
using System.Linq;
using System.Threading.Tasks;
using System.Windows.Input;
using InfoMovie.Helpers;
using InfoMovie.ViewModels;

namespace InfoMovie.Commands {
  public class LoadMoviesCommand : ICommand {
    private readonly SearchViewModel _viewModel;
    private int _pageNumber;
    private static int PageSize = 7;

    public LoadMoviesCommand(SearchViewModel viewModel) {
      _viewModel = viewModel;
      _pageNumber = _viewModel.PageNumber;
    }

    public event EventHandler CanExecuteChanged;

    public bool CanExecute(object parameter) {
      return true;
    }

    public async void Execute(object parameter) {
      var movieDatabaseService = new MovieDatabaseService<MoviesDatabaseContext>();
      var movies = await movieDatabaseService.GetMoviesAsync();
      _viewModel.Movies.Clear();
      foreach (var movie in movies) {
        _viewModel.Movies.Add(movie);
      }
      OnCanExecuteChanged();
    }

    private void OnCanExecuteChanged() {
      CanExecuteChanged?.Invoke(this, EventArgs.Empty);
    }
  }
}
