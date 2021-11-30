import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:redux_epics/redux_epics.dart';

import 'data/movies_api.dart';
import 'data/user_api.dart';
import 'epics/app_epics.dart';
import 'models/app_state.dart';
import 'presentation/login_page.dart';
import 'reducer/reducer.dart';

void main() {
  final UserData userData = UserData();
  final MoviesApi moviesApi = MoviesApi();
  final AppEpics epics = AppEpics(userData, moviesApi);

  final Store<AppState> store = Store<AppState>(
    reducer,
    initialState: AppState(),
    middleware: <Middleware<AppState>>[
      (Store<AppState> store, dynamic action, NextDispatcher next) {
        next(action);
        print(store.state);
      },
      EpicMiddleware<AppState>(epics.epics),
    ],
  );

  runApp(MyApp(
    store: store,
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key, required this.store}) : super(key: key);

  final Store<AppState> store;

  @override
  Widget build(BuildContext context) {
    return StoreProvider<AppState>(
      store: store,
      child: MaterialApp(
        title: 'Movie Time',
        theme: ThemeData.dark(),
        home: const LoginPage(),
      ),
    );
  }
}
