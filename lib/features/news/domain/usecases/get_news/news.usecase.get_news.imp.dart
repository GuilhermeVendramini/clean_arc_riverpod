import 'package:dartz/dartz.dart';

import '../../entities/news/news.entity.dart';
import '../../repositories/news.domain.repository.dart';
import 'news.usecase.get_news.dart';

class NewsUseCaseGetNewsImp implements NewsUseCaseGetNews {
  final NewsDomainRepository _newsDomainRepository;
  NewsUseCaseGetNewsImp(this._newsDomainRepository);

  @override
  Future<Either<Exception, List<NewsEntity>>> getNews() async {
    return await _newsDomainRepository.getNews();
  }
}