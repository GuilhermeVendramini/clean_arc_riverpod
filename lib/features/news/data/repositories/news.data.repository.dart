import 'package:dartz/dartz.dart';

import 'package:clean_arq_riverpod/features/news/domain/entities/news/news.entity.dart';

import '../../domain/repositories/news.domain.repository.dart';
import '../datasources/news.datasource.dart';

class NewsDataRepository implements NewsDomainRepository {
  final NewsDataSource _dataSource;

  NewsDataRepository(this._dataSource);

  @override
  Future<Either<Exception, List<NewsEntity>>> getNews() async {
    return await _dataSource.getNews();
  }

  @override
  Future<Either<Exception, NewsEntity>> getNewsById(String id) async {
   return await _dataSource.getNewsById(id);
  }

}