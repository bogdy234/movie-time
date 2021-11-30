import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';

import '../models/app_movie.dart';
import '../models/app_state.dart';

class MoviesContainer extends StatelessWidget {
  const MoviesContainer({Key? key, required this.builder}) : super(key: key);

  final ViewModelBuilder<List<AppMovie>> builder;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, List<AppMovie>>(
      builder: builder,
      converter: (Store<AppState> store) {
        return store.state.movies;
      },
    );
  }
}
