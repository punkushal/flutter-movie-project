class Movie {
  String? title;
  String? year;
  String? rated;
  String? released;
  String? runtime;
  String? genre;
  String? director;
  String? writer;
  String? actors;
  String? plot;
  String? language;
  String? country;
  String? awards;
  String? poster;
  List<Ratings>? ratings;

  String? imdbRating;
  String? imdbVotes;
  String? imdbID;
  String? type;

  String? boxOffice;
  String? production;
  String? website;

  Movie({
    this.title,
    this.year,
    this.rated,
    this.released,
    this.runtime,
    this.genre,
    this.director,
    this.writer,
    this.actors,
    this.plot,
    this.language,
    this.country,
    this.awards,
    this.poster,
    this.ratings,
    this.imdbRating,
    this.imdbVotes,
    this.imdbID,
    this.type,
    this.boxOffice,
    this.production,
    this.website,
  });

  Movie.fromJson(Map<String, dynamic> json) {
    title = json['Title'];
    year = json['Year'];
    rated = json['Rated'];
    released = json['Released'];
    runtime = json['Runtime'];
    genre = json['Genre'];
    director = json['Director'];
    writer = json['Writer'];
    actors = json['Actors'];
    plot = json['Plot'];
    language = json['Language'];
    country = json['Country'];
    awards = json['Awards'];
    poster = json['Poster'];
    if (json['Ratings'] != null) {
      ratings = <Ratings>[];
      json['Ratings'].forEach((v) {
        ratings!.add(Ratings.fromJson(v));
      });
    }

    imdbRating = json['imdbRating'];
    imdbVotes = json['imdbVotes'];
    imdbID = json['imdbID'];
    type = json['Type'];

    boxOffice = json['BoxOffice'];
    production = json['Production'];
    website = json['Website'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['Title'] = title;
    data['Year'] = year;
    data['Rated'] = rated;
    data['Released'] = released;
    data['Runtime'] = runtime;
    data['Genre'] = genre;
    data['Director'] = director;
    data['Writer'] = writer;
    data['Actors'] = actors;
    data['Plot'] = plot;
    data['Language'] = language;
    data['Country'] = country;
    data['Awards'] = awards;
    data['Poster'] = poster;
    if (ratings != null) {
      data['Ratings'] = ratings!.map((v) => v.toJson()).toList();
    }

    data['imdbRating'] = imdbRating;
    data['imdbVotes'] = imdbVotes;
    data['imdbID'] = imdbID;
    data['Type'] = type;

    data['BoxOffice'] = boxOffice;
    data['Production'] = production;
    data['Website'] = website;

    return data;
  }
}

class Ratings {
  String? source;
  String? value;

  Ratings({this.source, this.value});

  Ratings.fromJson(Map<String, dynamic> json) {
    source = json['Source'];
    value = json['Value'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['Source'] = source;
    data['Value'] = value;
    return data;
  }
}
