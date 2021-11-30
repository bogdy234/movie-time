import '../models/app_movie.dart';

class GetMovies {
  GetMovies(this.page);

  final int page;
}

class GetMoviesSuccessful {
  GetMoviesSuccessful(this.movies);

  final List<AppMovie> movies;
}

class GetMoviesError {
  GetMoviesError(this.error);

  final Object error;
}
