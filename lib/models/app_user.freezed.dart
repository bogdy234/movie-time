// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'app_user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AppUserTearOff {
  const _$AppUserTearOff();

  AppUser$ call(
      {required String id,
      required String email,
      required String name,
      required String? imageUrl,
      List<AppMovie> favoriteMovies = const <AppMovie>[]}) {
    return AppUser$(
      id: id,
      email: email,
      name: name,
      imageUrl: imageUrl,
      favoriteMovies: favoriteMovies,
    );
  }
}

/// @nodoc
const $AppUser = _$AppUserTearOff();

/// @nodoc
mixin _$AppUser {
  String get id => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get imageUrl => throw _privateConstructorUsedError;
  List<AppMovie> get favoriteMovies => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AppUserCopyWith<AppUser> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppUserCopyWith<$Res> {
  factory $AppUserCopyWith(AppUser value, $Res Function(AppUser) then) =
      _$AppUserCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String email,
      String name,
      String? imageUrl,
      List<AppMovie> favoriteMovies});
}

/// @nodoc
class _$AppUserCopyWithImpl<$Res> implements $AppUserCopyWith<$Res> {
  _$AppUserCopyWithImpl(this._value, this._then);

  final AppUser _value;
  // ignore: unused_field
  final $Res Function(AppUser) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? email = freezed,
    Object? name = freezed,
    Object? imageUrl = freezed,
    Object? favoriteMovies = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      favoriteMovies: favoriteMovies == freezed
          ? _value.favoriteMovies
          : favoriteMovies // ignore: cast_nullable_to_non_nullable
              as List<AppMovie>,
    ));
  }
}

/// @nodoc
abstract class $AppUser$CopyWith<$Res> implements $AppUserCopyWith<$Res> {
  factory $AppUser$CopyWith(AppUser$ value, $Res Function(AppUser$) then) =
      _$AppUser$CopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String email,
      String name,
      String? imageUrl,
      List<AppMovie> favoriteMovies});
}

/// @nodoc
class _$AppUser$CopyWithImpl<$Res> extends _$AppUserCopyWithImpl<$Res>
    implements $AppUser$CopyWith<$Res> {
  _$AppUser$CopyWithImpl(AppUser$ _value, $Res Function(AppUser$) _then)
      : super(_value, (v) => _then(v as AppUser$));

  @override
  AppUser$ get _value => super._value as AppUser$;

  @override
  $Res call({
    Object? id = freezed,
    Object? email = freezed,
    Object? name = freezed,
    Object? imageUrl = freezed,
    Object? favoriteMovies = freezed,
  }) {
    return _then(AppUser$(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      favoriteMovies: favoriteMovies == freezed
          ? _value.favoriteMovies
          : favoriteMovies // ignore: cast_nullable_to_non_nullable
              as List<AppMovie>,
    ));
  }
}

/// @nodoc

class _$AppUser$ implements AppUser$ {
  const _$AppUser$(
      {required this.id,
      required this.email,
      required this.name,
      required this.imageUrl,
      this.favoriteMovies = const <AppMovie>[]});

  @override
  final String id;
  @override
  final String email;
  @override
  final String name;
  @override
  final String? imageUrl;
  @JsonKey(defaultValue: const <AppMovie>[])
  @override
  final List<AppMovie> favoriteMovies;

  @override
  String toString() {
    return 'AppUser(id: $id, email: $email, name: $name, imageUrl: $imageUrl, favoriteMovies: $favoriteMovies)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AppUser$ &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.imageUrl, imageUrl) &&
            const DeepCollectionEquality()
                .equals(other.favoriteMovies, favoriteMovies));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(imageUrl),
      const DeepCollectionEquality().hash(favoriteMovies));

  @JsonKey(ignore: true)
  @override
  $AppUser$CopyWith<AppUser$> get copyWith =>
      _$AppUser$CopyWithImpl<AppUser$>(this, _$identity);
}

abstract class AppUser$ implements AppUser {
  const factory AppUser$(
      {required String id,
      required String email,
      required String name,
      required String? imageUrl,
      List<AppMovie> favoriteMovies}) = _$AppUser$;

  @override
  String get id;
  @override
  String get email;
  @override
  String get name;
  @override
  String? get imageUrl;
  @override
  List<AppMovie> get favoriteMovies;
  @override
  @JsonKey(ignore: true)
  $AppUser$CopyWith<AppUser$> get copyWith =>
      throw _privateConstructorUsedError;
}
