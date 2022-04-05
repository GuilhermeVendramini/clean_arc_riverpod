import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http/http.dart' as http;

import '../data/datasources/news.datasource.dart';
import '../data/datasources/remote/news.datasource.remote.dart';
import '../data/repositories/news.data.repository.dart';

final Provider<NewsDataSource> newsDataSourceRemoteProvider =
    Provider<NewsDataSource>(
  (ref) => NewsDataSourceRemote(http.Client()),
);

final Provider<NewsDataRepository> newsDataRepositoryProvider =
    Provider<NewsDataRepository>(
  (ref) => NewsDataRepository(ref.read(newsDataSourceRemoteProvider)),
);
