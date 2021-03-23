import 'package:flutter/material.dart';
import 'package:ts_movies_app/domain/entities/movie_entity.dart';
import 'package:ts_movies_app/presentation/blocs/movie_backdrop/movie_backdrop_bloc.dart';
import 'package:ts_movies_app/presentation/journeys/home/movie_carousel/movie_backdrop_widget.dart';
import 'package:ts_movies_app/presentation/journeys/home/movie_carousel/movie_widget_data.dart';
import 'package:ts_movies_app/presentation/widgets/movie_app_bar.dart';
import 'package:ts_movies_app/presentation/widgets/separator.dart';

import 'movie_page_view.dart';

class MovieCarouselWidget extends StatelessWidget {
  final List<MovieEntity> movies;
  final int defaultIndex;

  const MovieCarouselWidget({
    Key key,
    @required this.movies,
    @required this.defaultIndex,
  }) : assert(defaultIndex >= 0, 'defaultIndex cannot be less than 0');

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        MovieBackdropWidget(),
        Column(
          children: [
            MovieAppBar(),
            MoviePageView(
              movies: movies,
              initialPage: defaultIndex,
            ),
            MovieDataWidget(),
            Separator(),
          ],
        ),
      ],
    );
  }
}
