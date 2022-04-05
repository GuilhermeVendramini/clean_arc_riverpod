import 'package:dartz/dartz.dart';

import '../../entities/news/news.entity.dart';

abstract class NewsUseCaseGetNews {
  Future<Either<Exception, List<NewsEntity>>> getNews();
}
