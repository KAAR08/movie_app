class Movie {
  final String title;
  final String year;
  final String rated;
  final String released;
  final String runtime;
  final String genre;
  final String director;
  final String writer;
  final String actors;
  final String plot;
  final String language;
  final String country;
  final String awards;
  final String poster;
  final String metascore;
  final List<String> images;

  // Optional fields (can be null)
  final List<dynamic>? ratings;
  final String? imdbRating;
  final String? imdbVotes;
  final String? imdbID;
  final String? type;
  final String? dvd;
  final String? boxOffice;
  final String? production;
  final String? website;
  final String? response;

  Movie({
    required this.title,
    required this.year,
    required this.rated,
    required this.released,
    required this.runtime,
    required this.genre,
    required this.director,
    required this.writer,
    required this.actors,
    required this.plot,
    required this.language,
    required this.country,
    required this.awards,
    required this.poster,
    required this.metascore,
    required this.images,
    this.ratings,
    this.imdbRating,
    this.imdbVotes,
    this.imdbID,
    this.type,
    this.dvd,
    this.boxOffice,
    this.production,
    this.website,
    this.response,
  });

  factory Movie.fromJson(Map<String, dynamic> json) {
    return Movie(
      title: json['Title'] as String? ?? '',
      year: json['Year'] as String? ?? '',
      rated: json['Rated'] as String? ?? '',
      released: json['Released'] as String? ?? '',
      runtime: json['Runtime'] as String? ?? '',
      genre: json['Genre'] as String? ?? '',
      director: json['Director'] as String? ?? '',
      writer: json['Writer'] as String? ?? '',
      actors: json['Actor'] as String? ?? json['Actors'] as String? ?? '',
      plot: json['Plot'] as String? ?? '',
      language: json['Language'] as String? ?? '',
      country: json['Country'] as String? ?? '',
      awards: json['Awards'] as String? ?? '',
      poster: json['Poster'] as String? ?? '',
      metascore: json['Metascore'] as String? ?? '',
      images: List<String>.from(json['images'] as List? ?? []),
      ratings: json['Ratings'] as List<dynamic>?,
      imdbRating: json['imdbRating'] as String?,
      imdbVotes: json['imdbVotes'] as String?,
      imdbID: json['imdbID'] as String?,
      type: json['Type'] as String?,
      dvd: json['DVD'] as String?,
      boxOffice: json['BoxOffice'] as String?,
      production: json['Production'] as String?,
      website: json['Website'] as String?,
      response: json['Response'] as String?,
    );
  }
}
