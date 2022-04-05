import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../domain/usecases/get_news_by_id/news.usecase.get_news_by_id.dart';
import '../../domain/usecases/get_news_by_id/news.usecase.get_news_by_id.imp.dart';
import '../news.providers.dart';
import 'notifiers/news.get_news_by_id.notifier.dart';
import 'states/news.get_news_by_id.state.dart';

final Provider<NewsUseCaseGetNewsById> newsUseCaseGetNewsByIdProvider =
    Provider<NewsUseCaseGetNewsById>(
  (ref) => NewsUseCaseGetNewsByIdImp(ref.read(newsDataRepositoryProvider)),
);

final StateNotifierProvider<NewsGetNewsByIdNotifier, NewsGetNewsByIdState>
    newsGetNewsByIdeNotifierProvider =
    StateNotifierProvider<NewsGetNewsByIdNotifier, NewsGetNewsByIdState>(
  (ref) => NewsGetNewsByIdNotifier(ref.read(newsUseCaseGetNewsByIdProvider)),
);
