import 'app_user.dart';

class AppState {
  AppState({this.user});

  final AppUser? user;

  AppState copyWith({final AppUser? user}) {
    return AppState(user: user ?? this.user);
  }

  @override
  String toString() {
    return 'AppState{user: $user}';
  }
}
