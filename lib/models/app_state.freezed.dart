// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'app_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AppStateTearOff {
  const _$AppStateTearOff();

  AppState$ call(
      {AppUser? user,
      List<AppMovie> movies = const <AppMovie>[],
      int bottomBarSelectedIndex = 0,
      int moviesPage = 1,
      bool isLoading = false}) {
    return AppState$(
      user: user,
      movies: movies,
      bottomBarSelectedIndex: bottomBarSelectedIndex,
      moviesPage: moviesPage,
      isLoading: isLoading,
    );
  }
}

/// @nodoc
const $AppState = _$AppStateTearOff();

/// @nodoc
mixin _$AppState {
  AppUser? get user => throw _privateConstructorUsedError;
  List<AppMovie> get movies => throw _privateConstructorUsedError;
  int get bottomBarSelectedIndex => throw _privateConstructorUsedError;
  int get moviesPage => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AppStateCopyWith<AppState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppStateCopyWith<$Res> {
  factory $AppStateCopyWith(AppState value, $Res Function(AppState) then) =
      _$AppStateCopyWithImpl<$Res>;
  $Res call(
      {AppUser? user,
      List<AppMovie> movies,
      int bottomBarSelectedIndex,
      int moviesPage,
      bool isLoading});

  $AppUserCopyWith<$Res>? get user;
}

/// @nodoc
class _$AppStateCopyWithImpl<$Res> implements $AppStateCopyWith<$Res> {
  _$AppStateCopyWithImpl(this._value, this._then);

  final AppState _value;
  // ignore: unused_field
  final $Res Function(AppState) _then;

  @override
  $Res call({
    Object? user = freezed,
    Object? movies = freezed,
    Object? bottomBarSelectedIndex = freezed,
    Object? moviesPage = freezed,
    Object? isLoading = freezed,
  }) {
    return _then(_value.copyWith(
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as AppUser?,
      movies: movies == freezed
          ? _value.movies
          : movies // ignore: cast_nullable_to_non_nullable
              as List<AppMovie>,
      bottomBarSelectedIndex: bottomBarSelectedIndex == freezed
          ? _value.bottomBarSelectedIndex
          : bottomBarSelectedIndex // ignore: cast_nullable_to_non_nullable
              as int,
      moviesPage: moviesPage == freezed
          ? _value.moviesPage
          : moviesPage // ignore: cast_nullable_to_non_nullable
              as int,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }

  @override
  $AppUserCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $AppUserCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc
abstract class $AppState$CopyWith<$Res> implements $AppStateCopyWith<$Res> {
  factory $AppState$CopyWith(AppState$ value, $Res Function(AppState$) then) =
      _$AppState$CopyWithImpl<$Res>;
  @override
  $Res call(
      {AppUser? user,
      List<AppMovie> movies,
      int bottomBarSelectedIndex,
      int moviesPage,
      bool isLoading});

  @override
  $AppUserCopyWith<$Res>? get user;
}

/// @nodoc
class _$AppState$CopyWithImpl<$Res> extends _$AppStateCopyWithImpl<$Res>
    implements $AppState$CopyWith<$Res> {
  _$AppState$CopyWithImpl(AppState$ _value, $Res Function(AppState$) _then)
      : super(_value, (v) => _then(v as AppState$));

  @override
  AppState$ get _value => super._value as AppState$;

  @override
  $Res call({
    Object? user = freezed,
    Object? movies = freezed,
    Object? bottomBarSelectedIndex = freezed,
    Object? moviesPage = freezed,
    Object? isLoading = freezed,
  }) {
    return _then(AppState$(
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as AppUser?,
      movies: movies == freezed
          ? _value.movies
          : movies // ignore: cast_nullable_to_non_nullable
              as List<AppMovie>,
      bottomBarSelectedIndex: bottomBarSelectedIndex == freezed
          ? _value.bottomBarSelectedIndex
          : bottomBarSelectedIndex // ignore: cast_nullable_to_non_nullable
              as int,
      moviesPage: moviesPage == freezed
          ? _value.moviesPage
          : moviesPage // ignore: cast_nullable_to_non_nullable
              as int,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$AppState$ implements AppState$ {
  const _$AppState$(
      {this.user,
      this.movies = const <AppMovie>[],
      this.bottomBarSelectedIndex = 0,
      this.moviesPage = 1,
      this.isLoading = false});

  @override
  final AppUser? user;
  @JsonKey(defaultValue: const <AppMovie>[])
  @override
  final List<AppMovie> movies;
  @JsonKey(defaultValue: 0)
  @override
  final int bottomBarSelectedIndex;
  @JsonKey(defaultValue: 1)
  @override
  final int moviesPage;
  @JsonKey(defaultValue: false)
  @override
  final bool isLoading;

  @override
  String toString() {
    return 'AppState(user: $user, movies: $movies, bottomBarSelectedIndex: $bottomBarSelectedIndex, moviesPage: $moviesPage, isLoading: $isLoading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AppState$ &&
            const DeepCollectionEquality().equals(other.user, user) &&
            const DeepCollectionEquality().equals(other.movies, movies) &&
            const DeepCollectionEquality()
                .equals(other.bottomBarSelectedIndex, bottomBarSelectedIndex) &&
            const DeepCollectionEquality()
                .equals(other.moviesPage, moviesPage) &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(user),
      const DeepCollectionEquality().hash(movies),
      const DeepCollectionEquality().hash(bottomBarSelectedIndex),
      const DeepCollectionEquality().hash(moviesPage),
      const DeepCollectionEquality().hash(isLoading));

  @JsonKey(ignore: true)
  @override
  $AppState$CopyWith<AppState$> get copyWith =>
      _$AppState$CopyWithImpl<AppState$>(this, _$identity);
}

abstract class AppState$ implements AppState {
  const factory AppState$(
      {AppUser? user,
      List<AppMovie> movies,
      int bottomBarSelectedIndex,
      int moviesPage,
      bool isLoading}) = _$AppState$;

  @override
  AppUser? get user;
  @override
  List<AppMovie> get movies;
  @override
  int get bottomBarSelectedIndex;
  @override
  int get moviesPage;
  @override
  bool get isLoading;
  @override
  @JsonKey(ignore: true)
  $AppState$CopyWith<AppState$> get copyWith =>
      throw _privateConstructorUsedError;
}
