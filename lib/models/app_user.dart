import 'package:freezed_annotation/freezed_annotation.dart';

import 'app_movie.dart';

part 'app_user.freezed.dart';

@freezed
class AppUser with _$AppUser {
  const factory AppUser({
    required String id,
    required String email,
    required String name,
    required String? imageUrl,
    @Default(<AppMovie>[]) List<AppMovie> favoriteMovies,
  }) = AppUser$;
}

// Without freezed
// class AppUser {
//   AppUser({
//     required this.id,
//     required this.email,
//     required this.name,
//     required this.imageUrl,
//     this.favoriteMovies = const <AppMovie>[],
//   });
//
//   AppUser copyWith({
//     final String? id,
//     final String? email,
//     final String? name,
//     final String? imageUrl,
//     final List<AppMovie>? favoriteMovies,
//   }) {
//     return AppUser(
//       id: id ?? this.id,
//       email: email ?? this.email,
//       name: name ?? this.name,
//       imageUrl: imageUrl ?? this.imageUrl,
//       favoriteMovies: favoriteMovies ?? this.favoriteMovies,
//     );
//   }
//
//   @override
//   String toString() {
//     return 'AppUser{id: $id, email: $email, name: $name, imageUrl: $imageUrl, favoriteMovies: $favoriteMovies}';
//   }
//
//   final String id;
//   final String email;
//   final String name;
//   final String? imageUrl;
//   final List<AppMovie> favoriteMovies;
// }
