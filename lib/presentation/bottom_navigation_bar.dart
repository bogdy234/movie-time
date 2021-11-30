import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';

import '../actions/press_bottom_bar_option.dart';
import '../container/bottom_bar_index_container.dart';
import '../models/app_state.dart';
import 'discover_page.dart';
import 'profile_page.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  void onTapHandler(int index, int bottomBarIndexSelected) {
    if (bottomBarIndexSelected == index) {
      return;
    }

    final Store<AppState> store = StoreProvider.of<AppState>(context);
    store.dispatch(PressBottomBarOption(index));

    if (index == 0) {
      Navigator.push<void>(
        context,
        MaterialPageRoute<HomePage>(
          builder: (BuildContext context) => const HomePage(),
        ),
      );
    } else if (index == 1) {
      Navigator.push<void>(
        context,
        MaterialPageRoute<ProfilePage>(
          builder: (BuildContext context) => const ProfilePage(),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return BottomBarIndexContainer(
      builder: (BuildContext context, int bottomBarIndexSelected) {
        return BottomNavigationBar(
          currentIndex: bottomBarIndexSelected,
          onTap: (int index) => onTapHandler(index, bottomBarIndexSelected),
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'Discover',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.supervised_user_circle),
              label: 'Profile',
            ),
          ],
        );
      },
    );
  }
}
