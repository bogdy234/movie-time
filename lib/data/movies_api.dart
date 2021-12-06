import 'dart:convert';

import 'package:http/http.dart';

import '../models/app_movie.dart';

class MoviesApi {
  Future<List<AppMovie>> getMovies(int page) async {
    final Uri uri = Uri(scheme: 'https', host: 'yts.mx', pathSegments: <String>[
      'api',
      'v2',
      'list_movies.json'
    ], queryParameters: <String, String>{
      'page': '$page',
    });

    final Response response = await get(uri);
    if (response.statusCode != 200) {
      throw StateError('Error fetching the movies');
    }

    final Map<String, dynamic> body = jsonDecode(response.body) as Map<String, dynamic>;
    final Map<String, dynamic> data = body['data'] as Map<String, dynamic>;
    final List<dynamic> movies = data['movies'] as List<dynamic>;

    final List<AppMovie> appMovies = movies.map<AppMovie>((dynamic movie) {
      final int id = movie['id'] as int;
      final String title = movie['title'] as String;
      final int year = movie['year'] as int;
      final double rating = (movie['rating'] as num).toDouble();
      final String summary = movie['summary'] as String;
      final String coverImageUrl = movie['medium_cover_image'] as String;

      final AppMovie appMovie = AppMovie(
        id: id,
        title: title,
        year: year,
        rating: rating,
        summary: summary,
        coverImageUrl: coverImageUrl,
      );
      return appMovie;
    }).toList();

    if (appMovies == null) {
      throw StateError('There are no movies that matches the search');
    }

    return appMovies;
  }
}
