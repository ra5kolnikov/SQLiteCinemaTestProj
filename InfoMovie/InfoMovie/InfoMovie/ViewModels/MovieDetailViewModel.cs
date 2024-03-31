using InfoMovie.Models;
using System;
using System.Collections.Generic;
using System.Net.Http;
using Xamarin.Forms;

namespace InfoMovie.ViewModels {
  public class MovieDetailViewModel : BaseViewModel {
    private Movie _movie;
    public Movie Movie {
      get { return _movie; }
      set { SetProperty(ref _movie, value); }
    }

    private List<string> _actorsList;
    public List<string> ActorsList {
      get { return _actorsList; }
      set { SetProperty(ref _actorsList, value); }
    }

    public MovieDetailViewModel() {}

    public MovieDetailViewModel(Movie movie) {
      Movie = movie;
      ActorsList = ParseActors(movie.Actors);
    }

    private List<string> ParseActors(string actors) {
      return new List<string>(actors.Split(", "));
    }
  }
}
