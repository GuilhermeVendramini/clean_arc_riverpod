import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/providers/core.providers.dart';
import '../data/datasources/news.datasource.dart';
import '../data/datasources/remote/news.datasource.remote.dart';
import '../data/repositories/news.data.repository.dart';

final Provider<NewsDataSource> newsDataSourceRemoteProvider =
    Provider<NewsDataSource>(
  (ref) => NewsDataSourceRemote(ref.read(coreHttpServiceProvider)),
);

final Provider<NewsDataRepository> newsDataRepositoryProvider =
    Provider<NewsDataRepository>(
  (ref) => NewsDataRepository(ref.read(newsDataSourceRemoteProvider)),
);
