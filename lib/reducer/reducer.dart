// state + action => state
import 'package:movie_time/actions/add_movie_favorite.dart';
import 'package:redux/redux.dart';

import '../actions/get_movies.dart';
import '../actions/get_user_data_with_token.dart';
import '../actions/logout.dart';
import '../actions/press_bottom_bar_option.dart';
import '../actions/sign_in_with_facebook.dart';
import '../models/app_movie.dart';
import '../models/app_state.dart';

Reducer<AppState> reducer = combineReducers<AppState>(<Reducer<AppState>>[
  TypedReducer<AppState, SignInWithFacebookSuccessful>(signInWithFacebookSuccessful),
  TypedReducer<AppState, GetUserDataWithTokenSuccessful>(getUserDataWithTokenSuccessful),
  TypedReducer<AppState, PressBottomBarOption>(pressBottomBarOption),
  TypedReducer<AppState, Logout>(logout),
  TypedReducer<AppState, GetMovies>(getMovies),
  TypedReducer<AppState, GetMoviesSuccessful>(getMoviesSuccessful),
  TypedReducer<AppState, AddMovieFavorite>(addMovieFavorite),
]);

AppState addMovieFavorite(AppState state, AddMovieFavorite action) {
  return state.copyWith(user: state.user!.copyWith(favoriteMovies: action.favoriteMovies));
}

AppState signInWithFacebookSuccessful(AppState state, SignInWithFacebookSuccessful action) {
  return state.copyWith(user: action.appUser);
}

AppState getUserDataWithTokenSuccessful(AppState state, GetUserDataWithTokenSuccessful action) {
  return state.copyWith(user: action.appUser);
}

AppState logout(AppState state, Logout action) {
  return state.copyWith();
}

AppState pressBottomBarOption(AppState state, PressBottomBarOption action) {
  return state.copyWith(bottomBarSelectedIndex: action.index);
}

AppState getMoviesSuccessful(AppState state, GetMoviesSuccessful action) {
  return state.copyWith(
    movies: <AppMovie>[...state.movies, ...action.movies],
    isLoading: false,
    moviesPage: state.moviesPage + 1,
  );
}

AppState getMovies(AppState state, GetMovies action) {
  return state.copyWith(isLoading: true);
}
