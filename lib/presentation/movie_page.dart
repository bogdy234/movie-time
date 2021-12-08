import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';

import '../actions/add_remove_movie_favorite.dart';
import '../constants/constants.dart';
import '../container/user_container.dart';
import '../models/app_movie.dart';
import '../models/app_state.dart';
import '../models/app_user.dart';
import 'icon_text.dart';

class MoviePage extends StatelessWidget {
  const MoviePage({Key? key, required this.movie}) : super(key: key);

  final AppMovie movie;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(movie.title),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 300),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Center(
                child: Image.network(
                  movie.coverImageUrl,
                  fit: BoxFit.fitWidth,
                  width: MediaQuery.of(context).size.width * 0.8,
                  errorBuilder: (BuildContext context, Object exception, StackTrace? stackTrace) {
                    return Container(
                      width: MediaQuery.of(context).size.width * 0.8,
                      height: 246,
                      color: Colors.white,
                      child: Center(
                        child: Text(
                          movie.title,
                          style: const TextStyle(
                            color: Colors.black,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    );
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 16.0,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    IconText(
                      icon: const Icon(Icons.calendar_today),
                      text: movie.year != 0 ? '${movie.year}' : Constants.UNKNOWN,
                    ),
                    IconText(
                      icon: const Icon(Icons.star),
                      text: movie.rating != 0.0 ? '${movie.rating}' : Constants.UNRATED,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  movie.summary != '' ? movie.summary : Constants.NO_SUMMARY,
                  textAlign: TextAlign.center,
                ),
              ),
              UserContainer(
                builder: (
                  BuildContext context,
                  AppUser? user,
                ) {
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 16.0),
                    child: ElevatedButton(
                      onPressed: () {
                        final Store<AppState> store = StoreProvider.of<AppState>(context);
                        store.dispatch(
                          AddRemoveMovieFavorite(movie),
                        );
                      },
                      child: Text(
                        user!.favoriteMovies.contains(movie) ? Constants.REMOVE_FAVORITES : Constants.ADD_FAVORITES,
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
