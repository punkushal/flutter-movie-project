class SearchMovie {
  final String title;
  final String year;
  final String imdbID;
  final String type;
  final String poster;

  SearchMovie({
    required this.title,
    required this.year,
    required this.imdbID,
    required this.type,
    required this.poster,
  });

  // Factory constructor to create a Movie instance from JSON
  factory SearchMovie.fromJson(Map<String, dynamic> json) {
    return SearchMovie(
      title: json['Title'] as String,
      year: json['Year'] as String,
      imdbID: json['imdbID'] as String,
      type: json['Type'] as String,
      poster: json['Poster'] as String,
    );
  }

  // Method to convert a Movie instance to JSON
  Map<String, dynamic> toJson() {
    return {
      'Title': title,
      'Year': year,
      'imdbID': imdbID,
      'Type': type,
      'Poster': poster,
    };
  }
}
