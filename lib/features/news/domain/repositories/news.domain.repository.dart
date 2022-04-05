import 'package:dartz/dartz.dart';

import '../entities/news/news.entity.dart';

abstract class NewsDomainRepository {
  Future<Either<Exception, List<NewsEntity>>> getNews();
  Future<Either<Exception, NewsEntity>> getNewsById(String id);
}