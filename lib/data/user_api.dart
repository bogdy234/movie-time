import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';

import '../models/app_user.dart';

class UserData {
  Future<AppUser> signInWithFacebook() async {
    // Trigger the sign-in flow
    final LoginResult loginResult = await FacebookAuth.instance.login(
      permissions: <String>['email', 'public_profile', 'user_birthday', 'user_friends', 'user_gender', 'user_link'],
    );
    // Create a credential from thee access token
    if (!(loginResult.status == LoginStatus.success)) {
      throw StateError('Error signing in with Facebook!');
    }

    final OAuthCredential facebookAuthCredential = FacebookAuthProvider.credential(loginResult.accessToken!.token);

    // Once signed in, return the UserCredential
    final UserCredential firebaseData = await FirebaseAuth.instance.signInWithCredential(facebookAuthCredential);
    final User? user = firebaseData.user;

    if (user == null) {
      throw StateError('Failed to login');
    }

    return AppUser(
      email: user.email!,
      id: user.uid,
      name: user.displayName!,
      imageUrl: user.photoURL,
    );
  }

  Future<AppUser> getUserDataWithToken() async {
    //  If user is logged in return userData and if not return null
    final AccessToken? accessToken = await FacebookAuth.instance.accessToken;

    if (accessToken == null) {
      throw StateError('Failed to login');
    }

    final Map<String, dynamic> firebaseData = await FacebookAuth.instance.getUserData(
      fields: 'name,email,picture.width(200),birthday,friends,gender,link',
    );

    return AppUser(
      email: firebaseData['email'] as String,
      id: firebaseData['id'] as String,
      name: firebaseData['name'] as String,
      imageUrl: '',
    );
  }

  Future<void> logout() async {
    await FacebookAuth.instance.logOut();
  }
}
