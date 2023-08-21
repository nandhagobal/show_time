import 'package:book_show/modules/home/domain/movie_repository.dart';
import 'package:injectable/injectable.dart';

import '../models/movie.dart';

@Injectable()
class MovieUseCase{
  final MovieRepository _movieRepository;
  @FactoryMethod()
  MovieUseCase(this._movieRepository);

  Future<List<Movie>> fetchNowPlayingMovie() => _movieRepository.fetchNowPlayingMovie();

}