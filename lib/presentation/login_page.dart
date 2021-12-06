import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';

import '/constants/constants.dart';
import '../actions/get_movies.dart';
import '../actions/get_user_data_with_token.dart';
import '../actions/sign_in_with_facebook.dart';
import '../models/app_state.dart';
import 'discover_page.dart';
import 'login_button.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  void initState() {
    super.initState();
    final Store<AppState> store = StoreProvider.of<AppState>(
      context,
      listen: false,
    );
    store.dispatch(GetUserDataWithToken(onGettingUserDataWithToken));
  }

  void onGettingUserDataWithToken(dynamic action) {
    if (action is GetUserDataWithTokenSuccessful) {
      Navigator.push<void>(
        context,
        MaterialPageRoute<HomePage>(
          builder: (BuildContext context) => const HomePage(),
        ),
      );
      final Store<AppState> store = StoreProvider.of<AppState>(
        context,
        listen: false,
      );
      store.dispatch(GetMovies(1));
    }
  }

  void onResult(dynamic action) {
    if (action is SignInWithFacebookSuccessful) {
      final Store<AppState> store = StoreProvider.of<AppState>(context);
      store.dispatch(
        GetUserDataWithToken(
          (dynamic action) {
            if (action is GetUserDataWithTokenSuccessful) {
              Navigator.push<void>(
                context,
                MaterialPageRoute<HomePage>(
                  builder: (BuildContext context) => const HomePage(),
                ),
              );
            }
          },
        ),
      );
    } else {
      const AlertDialog(
        title: Text('Failed to login with Facebook...'),
      );
    }
  }

  void handleFacebookLogin() {
    final Store<AppState> store = StoreProvider.of<AppState>(context);
    store.dispatch(SignInWithFacebook(onResult));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          Constants.LOGIN,
        ),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            LoginButton(
              icon: const Icon(
                Icons.facebook,
                size: 40,
                color: Colors.blue,
              ),
              onTap: handleFacebookLogin,
              text: Constants.LOGIN_FACEBOOK,
              borderColor: Colors.blue,
              textColor: Colors.blue,
            ),
          ],
        ),
      ),
    );
  }
}
