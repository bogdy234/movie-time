import '../models/app_user.dart';

class SignInWithFacebook {
  SignInWithFacebook(this.result);

  final void Function(dynamic action) result;
}

class SignInWithFacebookSuccessful {
  SignInWithFacebookSuccessful(this.appUser);

  final AppUser appUser;
}

class SignInWithFacebookError {
  SignInWithFacebookError(this.error);

  final Object error;
}
