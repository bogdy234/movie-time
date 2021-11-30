import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';

import '../models/app_state.dart';

class BottomBarIndexContainer extends StatelessWidget {
  const BottomBarIndexContainer({Key? key, required this.builder}) : super(key: key);

  final ViewModelBuilder<int> builder;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, int>(
        builder: builder,
        converter: (Store<AppState> store) {
          return store.state.bottomBarSelectedIndex;
        });
  }
}
