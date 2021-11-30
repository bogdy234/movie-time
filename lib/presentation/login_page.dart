import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';

import '/constants/login_page.dart';
import '../actions/get_user_data_with_token.dart';
import '../actions/sign_in_with_facebook.dart';
import '../models/app_state.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  void initState() {
    super.initState();
    print('here');
    final Store<AppState> store = StoreProvider.of<AppState>(
      context,
      listen: false,
    );
    store.dispatch(GetUserDataWithToken(onGettingUserDataWithToken));
  }

  void onGettingUserDataWithToken(dynamic action) {
    final Store<AppState> store = StoreProvider.of<AppState>(context);
    if (action is GetUserDataWithTokenSuccessful) {
      print(store.state.user);
    } else {
      print(action.error);
    }
  }

  void onResult(dynamic action) {
    final Store<AppState> store = StoreProvider.of<AppState>(context);
    print('here');
    if (action is SignInWithFacebookSuccessful) {
      print('still here');
      print(store.state.user.toString());
    } else {
      print('hmm here');
      print('${action.error}');
    }
  }

  void handleFacebookLogin() {
    final Store<AppState> store = StoreProvider.of<AppState>(context);

    store.dispatch(SignInWithFacebook(onResult));
  }

  void handleLogout() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
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

class LoginButton extends StatelessWidget {
  const LoginButton(
      {Key? key,
      required this.icon,
      required this.onTap,
      required this.text,
      this.textColor = Colors.white,
      this.borderColor = Colors.white})
      : super(key: key);

  final Icon icon;
  final Color textColor;
  final Color borderColor;
  final void Function() onTap;
  final String text;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: MediaQuery.of(context).size.width * 0.7,
        decoration: BoxDecoration(
          border: Border.all(
            color: borderColor,
          ),
          borderRadius: const BorderRadius.all(
            Radius.circular(50),
          ),
        ),
        child: Row(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: icon,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                text,
                style: TextStyle(
                  color: textColor,
                  fontSize: 18,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
