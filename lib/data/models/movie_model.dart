import 'package:ts_movies_app/domain/entities/movie_entity.dart';

class MovieModel extends MovieEntity {
  final bool video;
  final int id;
  final String overview;
  final String releaseDate;
  final bool adult;
  final String backdropPath;
  final int voteCount;
  final List<int> genreIds;
  final double voteAverage;
  final String originalLanguage;
  final String originalTitle;
  final String posterPath;
  final String title;
  final double popularity;
  final String mediaType;

  MovieModel(
      {this.video,
      this.id,
      this.overview,
      this.releaseDate,
      this.adult,
      this.backdropPath,
      this.voteCount,
      this.genreIds,
      this.voteAverage,
      this.originalLanguage,
      this.originalTitle,
      this.posterPath,
      this.title,
      this.popularity,
      this.mediaType})
      : super(
          id: id,
          title: title,
          backdropPath: backdropPath,
          posterPath: posterPath,
          releaseDate: releaseDate,
          voteAverage: voteAverage,
          overview: overview,
        );

  factory MovieModel.fromJson(Map<String, dynamic> json) {
    return MovieModel(
      video: json['video'],
      id: json['id'],
      overview: json['overview'],
      releaseDate: json['release_date'],
      adult: json['adult'],
      backdropPath: json['backdrop_path'],
      voteCount: json['vote_count'],
      genreIds: json['genre_ids'].cast<int>(),
      voteAverage: json['vote_average']?.toDouble() ?? 0.0,
      originalLanguage: json['original_language'],
      originalTitle: json['original_title'],
      posterPath: json['poster_path'],
      title: json['title'],
      popularity: json['popularity']?.toDouble() ?? 0.0,
      mediaType: json['media_type'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['video'] = this.video;
    data['id'] = this.id;
    data['overview'] = this.overview;
    data['release_date'] = this.releaseDate;
    data['adult'] = this.adult;
    data['backdrop_path'] = this.backdropPath;
    data['vote_count'] = this.voteCount;
    data['genre_ids'] = this.genreIds;
    data['vote_average'] = this.voteAverage;
    data['original_language'] = this.originalLanguage;
    data['original_title'] = this.originalTitle;
    data['poster_path'] = this.posterPath;
    data['title'] = this.title;
    data['popularity'] = this.popularity;
    data['media_type'] = this.mediaType;
    return data;
  }
}
