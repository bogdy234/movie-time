import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';

import '../actions/get_movies.dart';
import '../constants/constants.dart';
import '../container/is_loading_container.dart';
import '../container/movies_container.dart';
import '../models/app_movie.dart';
import '../models/app_state.dart';
import 'bottom_navigation_bar.dart';
import 'cover_image_list_tile.dart';
import 'movie_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
  }

  void _onScroll() {
    final double currentPosition = _scrollController.offset;
    final double maxPosition = _scrollController.position.maxScrollExtent;
    final Store<AppState> store = StoreProvider.of<AppState>(
      context,
    );

    if (!store.state.isLoading && currentPosition > maxPosition - 0.2 * maxPosition) {
      store.dispatch(GetMovies(store.state.moviesPage));
    }
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          Constants.DISCOVER,
        ),
        centerTitle: true,
        actions: <Widget>[
          IsLoadingContainer(
            builder: (BuildContext context, bool isLoading) {
              return isLoading
                  ? const Center(
                      child: CircularProgressIndicator(),
                    )
                  : const SizedBox.shrink();
            },
          )
        ],
        automaticallyImplyLeading: false,
      ),
      body: MoviesContainer(
        builder: (BuildContext context, List<AppMovie> movies) {
          return GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 0.75,
            ),
            controller: _scrollController,
            itemCount: movies.length,
            itemBuilder: (BuildContext context, int index) {
              final String coverImageUrl = movies[index].coverImageUrl;
              return GestureDetector(
                onTap: () {
                  Navigator.push<void>(
                    context,
                    MaterialPageRoute<MoviePage>(
                      builder: (BuildContext context) => MoviePage(
                        movie: movies[index],
                      ),
                    ),
                  );
                },
                child: CoverImageListTile(
                  coverImageUrl: coverImageUrl,
                  movieTitle: movies[index].title,
                ),
              );
            },
          );
        },
      ),
      bottomNavigationBar: const BottomBar(),
    );
  }
}
