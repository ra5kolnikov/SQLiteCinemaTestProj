using System;
using System.Windows.Input;
using InfoMovie.Infrastructure;
using InfoMovie.ViewModels;

namespace InfoMovie.Commands {
  public class LoadMoviesCommand : ICommand {
    private readonly SearchViewModel _viewModel;

    public LoadMoviesCommand(SearchViewModel viewModel) {
      _viewModel = viewModel;
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
