using System;
using System.Linq;
using System.Threading.Tasks;
using System.Windows.Input;
using InfoMovie.ViewModels;
using Xamarin.Forms;

namespace InfoMovie.Commands {
  public class LoadMoreMoviesCommand : ICommand {
    private readonly SearchViewModel _viewModel;
    private readonly int PageSize = 7;

    public LoadMoreMoviesCommand(SearchViewModel viewModel) {
      _viewModel = viewModel;
    }

    public event EventHandler CanExecuteChanged;

    public bool CanExecute(object parameter) {
      return string.IsNullOrWhiteSpace(_viewModel.SearchQuery);
    }

    public async void Execute(object parameter) {
      await Task.Run(() => {
        var moviesToDisplay =
            _viewModel.Movies.Skip(_viewModel.PageNumber * PageSize).Take(PageSize);
        foreach (var movie in moviesToDisplay) {
          Device.BeginInvokeOnMainThread(() => _viewModel.DisplayedMovies.Add(movie));
        }
        _viewModel.PageNumber++;
      });
    }
  }
}