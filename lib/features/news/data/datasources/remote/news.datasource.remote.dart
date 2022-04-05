import 'dart:convert';

import 'package:clean_arq_riverpod/features/news/domain/entities/news/news.entity.dart';
import 'package:dartz/dartz.dart';

import '../news.datasource.dart';
import 'package:http/http.dart' as http;

class NewsDataSourceRemote implements NewsDataSource {
  final http.Client client;

  NewsDataSourceRemote(this.client);

  @override
  Future<Either<Exception, List<NewsEntity>>> getNews() async {
    final response = await client.get(
      Uri(path: 'https://jsonplaceholder.typicode.com/posts'),
      headers: {
        'Content-Type': 'application/json',
      },
    );

    if (response.statusCode == 200) {
      return Right([NewsEntity(id: 0, userId: 0, title: 'TODO')]);
    } else {
      return Left(Exception('Datasource fail'));
    }
  }

  @override
  Future<Either<Exception, NewsEntity>> getNewsById(String id) async {
    final response = await client.get(
      Uri.parse(
        'https://jsonplaceholder.typicode.com/posts/$id',
      ),
      headers: {
        'Content-Type': 'application/json',
      },
    );

    if (response.statusCode == 200) {
      return Right(NewsEntity.fromJson(json.decode(response.body)));
    } else {
      return Left(Exception('Datasource fail'));
    }
  }
}
