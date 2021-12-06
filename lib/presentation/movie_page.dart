import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';

import '../actions/add_movie_favorite.dart';
import '../constants/constants.dart';
import '../models/app_movie.dart';
import '../models/app_state.dart';
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
                      text: '${movie.year}',
                    ),
                    IconText(
                      icon: const Icon(Icons.star),
                      text: '${movie.rating}',
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  movie.summary,
                  textAlign: TextAlign.center,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 16.0),
                child: ElevatedButton(
                  onPressed: () {
                    final Store<AppState> store = StoreProvider.of<AppState>(context);
                    store.dispatch(
                      AddMovieFavorite(<AppMovie>[...store.state.user!.favoriteMovies, movie]),
                    );
                  },
                  child: const Text(Constants.ADD_FAVORITES),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
