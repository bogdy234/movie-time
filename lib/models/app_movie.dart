class AppMovie {
  AppMovie({
    required this.id,
    required this.title,
    required this.year,
    required this.rating,
    required this.summary,
    required this.coverImageUrl,
  });

  final int id;
  final String title;
  final int year;
  final double rating;
  final String summary;
  final String coverImageUrl;

  @override
  String toString() {
    return 'AppMovie{id: $id, title: $title, year: $year, rating: $rating, summary: $summary, coverImageUrl: $coverImageUrl}';
  }
}
