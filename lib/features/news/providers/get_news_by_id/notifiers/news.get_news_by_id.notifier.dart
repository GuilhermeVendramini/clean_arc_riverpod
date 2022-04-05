import 'package:clean_arq_riverpod/features/news/domain/entities/news/news.entity.dart';
import 'package:clean_arq_riverpod/features/news/domain/usecases/get_news_by_id/news.usecase.get_news_by_id.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../states/news.get_news_by_id.state.dart';

class NewsGetNewsByIdNotifier extends StateNotifier<NewsGetNewsByIdState> {
  final NewsUseCaseGetNewsById _newsUseCaseGetNewsById;

  NewsGetNewsByIdNotifier(this._newsUseCaseGetNewsById)
      : super(const NewsGetNewsByIdStateInitial());

  Future<void> getNewsById(String id) async {
    try {
      state = const NewsGetNewsByIdStateLoading();

      Future.delayed(const Duration(seconds: 1), () async {
        final Either<Exception, NewsEntity> result =
            await _newsUseCaseGetNewsById.getNewsById(id);

        result.fold(
          (error) => state = NewsGetNewsByIdStateError(error.toString()),
          (entity) => state = NewsGetNewsByIdStateDone(entity),
        );
      });
    } on Exception catch (e) {
      state = NewsGetNewsByIdStateError(e.toString());
    }
  }
}
