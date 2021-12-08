import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';

import '../actions/logout.dart';
import '../constants/constants.dart';
import '../container/user_container.dart';
import '../models/app_movie.dart';
import '../models/app_state.dart';
import '../models/app_user.dart';
import 'bottom_navigation_bar.dart';
import 'cover_image_list_tile.dart';
import 'login_page.dart';
import 'movie_page.dart';
import 'profile_image_text.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  void logoutAction() {
    final Store<AppState> store = StoreProvider.of<AppState>(context);
    store.dispatch(Logout(onLogoutResult));
  }

  void onLogoutResult(dynamic action) {
    Navigator.push<void>(
      context,
      MaterialPageRoute<LoginPage>(
        builder: (BuildContext context) => const LoginPage(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: UserContainer(
          builder: (BuildContext context, AppUser? user) {
            if (user == null) {
              return const SizedBox.shrink();
            }

            final String name = user.name;
            final String imageUrl = user.imageUrl ?? Constants.GENERIC_USER_IMAGE_URL;

            return Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(name),
                ProfileImageText(
                  text: Constants.LOGOUT,
                  imageUrl: imageUrl,
                  onTextTap: logoutAction,
                ),
              ],
            );
          },
        ),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: UserContainer(
        builder: (BuildContext context, AppUser? user) {
          final List<AppMovie> favoriteMovies = user!.favoriteMovies;

          return Column(
            children: <Widget>[
              const Padding(
                padding: EdgeInsets.all(16.0),
                child: Text(
                  Constants.FAVORITE_MOVIES,
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
              Expanded(
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 0.75,
                    mainAxisSpacing: Constants.SPACING_TILES,
                    crossAxisSpacing: Constants.SPACING_TILES,
                  ),
                  itemCount: favoriteMovies.length,
                  itemBuilder: (BuildContext context, int index) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute<MoviePage>(
                            builder: (BuildContext context) => MoviePage(
                              movie: favoriteMovies[index],
                            ),
                          ),
                        );
                      },
                      child: CoverImageListTile(
                        coverImageUrl: favoriteMovies[index].coverImageUrl,
                        movieTitle: favoriteMovies[index].title,
                      ),
                    );
                  },
                ),
              ),
            ],
          );
        },
      ),
      bottomNavigationBar: const BottomBar(),
    );
  }
}
