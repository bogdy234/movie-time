import 'package:flutter/material.dart';
import 'package:movie_time/constants/constants.dart';

class CoverImageListTile extends StatelessWidget {
  const CoverImageListTile({Key? key, required this.coverImageUrl, required this.movieTitle}) : super(key: key);

  final String coverImageUrl;
  final String movieTitle;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Image.network(
        coverImageUrl,
        errorBuilder: (BuildContext context, Object exception, StackTrace? stackTrace) {
          return Container(
            margin: const EdgeInsets.only(
              bottom: Constants.SPACING_TILES,
            ),
            color: Colors.white,
            constraints: const BoxConstraints.expand(),
            child: Center(
              child: Text(
                movieTitle,
                style: const TextStyle(
                  color: Colors.black,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          );
        },
      ),
    );
  }
}
