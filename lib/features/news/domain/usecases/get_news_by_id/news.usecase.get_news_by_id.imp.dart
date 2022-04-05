import 'package:dartz/dartz.dart';

import '../../entities/news/news.entity.dart';
import '../../repositories/news.domain.repository.dart';
import 'news.usecase.get_news_by_id.dart';

class NewsUseCaseGetNewsByIdImp implements NewsUseCaseGetNewsById {
  final NewsDomainRepository _newsDomainRepository;
  NewsUseCaseGetNewsByIdImp(this._newsDomainRepository);

  @override
  Future<Either<Exception, NewsEntity>> getNewsById(String id) async {
    return await _newsDomainRepository.getNewsById(id);
  }
}