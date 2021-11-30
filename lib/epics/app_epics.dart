import 'package:redux_epics/redux_epics.dart';
import 'package:rxdart/rxdart.dart';

import '../actions/get_user_data_with_token.dart';
import '../actions/logout.dart';
import '../actions/sign_in_with_facebook.dart';
import '../data/user_api.dart';
import '../models/app_state.dart';
import '../models/app_user.dart';

class AppEpics {
  AppEpics(this.userData);

  final UserData userData;

  Epic<AppState> get epics {
    return combineEpics([
      TypedEpic<AppState, GetUserDataWithToken>(getUserDataWithToken),
      TypedEpic<AppState, SignInWithFacebook>(signInWithFacebook),
      TypedEpic<AppState, Logout>(logout),
    ]);
  }

  // action => action
  // Stream<dynamic> getLoggedInUserData(Stream<GetLoggedInUserData> actions, EpicStore<AppState> store) {
  //   return actions //
  //       .flatMap<Object>((GetLoggedInUserData action) => Stream<void>.value(null)
  //           .asyncMap((_) => userData.getLoggedInUserData())
  //           .map<Object>((Map<String, dynamic>? userData) => GetLoggedInUserDataSuccessfully(userData))
  //           .onErrorReturnWith((Object error, StackTrace stackTrace) => GetLoggedInUserDataError(error))
  //           .doOnData(action.result));
  // }

  Stream<dynamic> signInWithFacebook(Stream<SignInWithFacebook> actions, EpicStore<AppState> store) {
    return actions //
        .flatMap<Object>((SignInWithFacebook action) => Stream<void>.value(null)
            .asyncMap((_) => userData.signInWithFacebook())
            .map<Object>((AppUser userData) => SignInWithFacebookSuccessful(userData))
            .onErrorReturnWith((Object error, StackTrace stackTrace) => SignInWithFacebookError(error))
            .doOnData(action.result));
  }

  Stream<dynamic> getUserDataWithToken(Stream<GetUserDataWithToken> actions, EpicStore<AppState> store) {
    return actions //
        .flatMap<Object>((GetUserDataWithToken action) => Stream<void>.value(null)
            .asyncMap((_) => userData.getUserDataWithToken())
            .map<Object>((AppUser userData) => GetUserDataWithTokenSuccessful(userData))
            .onErrorReturnWith((Object error, StackTrace stackTrace) => GetUserDataWithTokenError(error))
            .doOnData(action.result));
  }

  Stream<dynamic> logout(Stream<Logout> actions, EpicStore<AppState> store) {
    return actions //
        .flatMap<void>(
            (Logout action) => Stream<void>.value(null).asyncMap((_) => userData.logout()).doOnData(action.result));
  }
}
