import 'package:freezed_annotation/freezed_annotation.dart';

import '../models/app_movie.dart';

part 'get_movies.freezed.dart';

@freezed
class GetMovies with _$GetMovies {
  const factory GetMovies(int page, {@Default('') String searchParam}) = GetMoviesStart;

  const factory GetMovies.successful(List<AppMovie> movies) = GetMoviesSuccessful;

  const factory GetMovies.error(Object error, StackTrace stackTrace) = GetMoviesError;
}

// without freezed
// class GetMovies {
//   GetMovies(this.page, {this.searchParam = ''});
//
//   final int page;
//   final String searchParam;
// }
//
// class GetMoviesSuccessful {
//   GetMoviesSuccessful(this.movies);
//
//   final List<AppMovie> movies;
// }
//
// class GetMoviesError {
//   GetMoviesError(this.error);
//
//   final Object error;
// }
