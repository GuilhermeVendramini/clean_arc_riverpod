import 'package:dartz/dartz.dart';

import '../../entities/news/news.entity.dart';

abstract class NewsUseCaseGetNewsById {
  Future<Either<Exception, NewsEntity>> getNewsById(String id);
}
