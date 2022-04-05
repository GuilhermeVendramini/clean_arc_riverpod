import 'package:clean_arq_riverpod/features/news/domain/entities/news/news.entity.dart';
import 'package:dartz/dartz.dart';

abstract class NewsDataSource {
  Future<Either<Exception, List<NewsEntity>>> getNews();
  Future<Either<Exception, NewsEntity>> getNewsById(String id);
}