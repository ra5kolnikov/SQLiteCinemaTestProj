using Xamarin.Forms;
using InfoMovie.ViewModels;
using InfoMovie.Models;

namespace InfoMovie.Views {
  public partial class MovieDetailPage : ContentPage {
    public MovieDetailPage(Movie movie) {
      InitializeComponent();
      BindingContext = new MovieDetailViewModel(movie);
    }
  }
}
