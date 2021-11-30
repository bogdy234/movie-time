import 'app_movie.dart';
import 'app_user.dart';

class AppState {
  AppState({
    this.user,
    this.movies = const <AppMovie>[],
    this.bottomBarSelectedIndex = 0,
    this.moviesPage = 1,
    this.isLoading = false,
  });

  final AppUser? user;
  final List<AppMovie> movies;
  final int moviesPage;
  final bool isLoading;
  final int bottomBarSelectedIndex;

  AppState copyWith({
    final AppUser? user,
    final List<AppMovie>? movies,
    final int? bottomBarSelectedIndex,
    final bool? isLoading,
    final int? moviesPage,
  }) {
    return AppState(
      user: user ?? this.user,
      movies: movies ?? this.movies,
      bottomBarSelectedIndex: bottomBarSelectedIndex ?? this.bottomBarSelectedIndex,
      isLoading: isLoading ?? this.isLoading,
      moviesPage: moviesPage ?? this.moviesPage,
    );
  }

  @override
  String toString() {
    return 'AppState{user: $user, movies: $movies, bottomBarSelectedIndex: $bottomBarSelectedIndex}';
  }
}
