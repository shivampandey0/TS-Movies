import 'package:dartz/dartz.dart';
import 'package:ts_movies_app/domain/entities/app_error.dart';
import 'package:ts_movies_app/domain/entities/movie_entity.dart';
import 'package:ts_movies_app/domain/entities/no_params.dart';
import 'package:ts_movies_app/domain/repositories/movie_repository.dart';

import 'usecase.dart';

class GetPlayingNow extends UseCase<List<MovieEntity>, NoParams>  {
  final MovieRepository repository;

  GetPlayingNow(this.repository);
  
  @override
  Future<Either<AppError, List<MovieEntity>>> call(NoParams noParams) async {
    return await repository.getPlayingNow();
  }
}
