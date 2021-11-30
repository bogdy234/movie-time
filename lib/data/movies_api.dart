import 'dart:convert';

import 'package:http/http.dart';

class MoviesApi {
  Future<void> getMovies(int page) async {
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

    final Map<String, dynamic> body =
        jsonDecode(response.body) as Map<String, dynamic>;
    final Map<String, dynamic> data = body['data'] as Map<String, dynamic>;
    final List<dynamic> movies = data['movies'] as List<dynamic>;

    print(movies[0]);
  }
}
