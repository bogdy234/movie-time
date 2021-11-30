// state + action => state
import 'package:redux/redux.dart';

import '../actions/get_user_data_with_token.dart';
import '../actions/logout.dart';
import '../actions/sign_in_with_facebook.dart';
import '../models/app_state.dart';

Reducer<AppState> reducer = combineReducers<AppState>(<Reducer<AppState>>[
  TypedReducer<AppState, SignInWithFacebookSuccessful>(signInWithFacebookSuccessful),
  TypedReducer<AppState, GetUserDataWithTokenSuccessful>(getUserDataWithTokenSuccessful),
]);

AppState signInWithFacebookSuccessful(AppState state, SignInWithFacebookSuccessful action) {
  return state.copyWith(user: action.appUser);
}

AppState getUserDataWithTokenSuccessful(AppState state, GetUserDataWithTokenSuccessful action) {
  return state.copyWith(user: action.appUser);
}

AppState logout(AppState state, Logout action) {
  return state.copyWith(user: null);
}
