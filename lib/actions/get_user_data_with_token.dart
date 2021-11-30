import '../models/app_user.dart';

class GetUserDataWithToken {
  GetUserDataWithToken(this.result);

  final void Function(dynamic action) result;
}

class GetUserDataWithTokenSuccessful {
  GetUserDataWithTokenSuccessful(this.appUser);

  final AppUser appUser;
}

class GetUserDataWithTokenError {
  GetUserDataWithTokenError(this.error);

  final Object error;
}
