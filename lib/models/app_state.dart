import 'package:freezed_annotation/freezed_annotation.dart';

import 'app_movie.dart';
import 'app_user.dart';

part 'app_state.freezed.dart';

@freezed
class AppState with _$AppState {
  const factory AppState({
    AppUser? user,
    @Default(<AppMovie>[]) List<AppMovie> movies,
    @Default(0) int bottomBarSelectedIndex,
    @Default(1) int moviesPage,
    @Default(false) bool isLoading,
  }) = AppState$;
}

// Without generator
// class AppState {
//   AppState({
//     this.user,
//     this.movies = const <AppMovie>[],
//     this.bottomBarSelectedIndex = 0,
//     this.moviesPage = 1,
//     this.isLoading = false,
//   });
//
//   final AppUser? user;
//   final List<AppMovie> movies;
//   final int moviesPage;
//   final bool isLoading;
//   final int bottomBarSelectedIndex;
//
//   AppState copyWith({
//     final AppUser? user,
//     final List<AppMovie>? movies,
//     final int? bottomBarSelectedIndex,
//     final bool? isLoading,
//     final int? moviesPage,
//   }) {
//     return AppState(
//       user: user ?? this.user,
//       movies: movies ?? this.movies,
//       bottomBarSelectedIndex: bottomBarSelectedIndex ?? this.bottomBarSelectedIndex,
//       isLoading: isLoading ?? this.isLoading,
//       moviesPage: moviesPage ?? this.moviesPage,
//     );
//   }
//
//   @override
//   String toString() {
//     return 'AppState{user: $user, movies: $movies, bottomBarSelectedIndex: $bottomBarSelectedIndex}';
//   }
// }
