import 'package:clean_arq_riverpod/features/news/domain/entities/news/news.entity.dart';

abstract class NewsGetNewsByIdState {
  const NewsGetNewsByIdState();
}

class NewsGetNewsByIdStateInitial extends NewsGetNewsByIdState {
  const NewsGetNewsByIdStateInitial();
}

class NewsGetNewsByIdStateLoading extends NewsGetNewsByIdState {
  const NewsGetNewsByIdStateLoading();
}

class NewsGetNewsByIdStateDone extends NewsGetNewsByIdState {
  final NewsEntity news;
  const NewsGetNewsByIdStateDone(this.news);
}

class NewsGetNewsByIdStateError extends NewsGetNewsByIdState {
  final String message;
  const NewsGetNewsByIdStateError(this.message);
}
