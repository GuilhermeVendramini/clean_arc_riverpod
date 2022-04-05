import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../providers/get_news_by_id/news.get_news_by_id.provider.dart';
import '../../providers/get_news_by_id/states/news.get_news_by_id.state.dart';

class NewsPage extends StatelessWidget {
  const NewsPage({Key? key}) : super(key: key);

  void callAction(WidgetRef ref, String id) {
    ref.read(newsGetNewsByIdeNotifierProvider.notifier).getNewsById(id);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('News page'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Consumer(
            builder: (BuildContext context, WidgetRef ref, Widget? child) {
              ref.listen<NewsGetNewsByIdState>(newsGetNewsByIdeNotifierProvider,
                  (previousState, nextState) {
                if (nextState is NewsGetNewsByIdStateError) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(nextState.message),
                    ),
                  );
                }
              });

              final NewsGetNewsByIdState state =
                  ref.watch(newsGetNewsByIdeNotifierProvider);

              return Column(
                children: [
                  if (state is NewsGetNewsByIdStateLoading)
                    const CircularProgressIndicator(),
                  if (state is NewsGetNewsByIdStateDone) Text(state.news.title),
                  ElevatedButton(
                    onPressed: () {
                      callAction(ref, '1');
                    },
                    child: const Text('Get news by ID 1'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      callAction(ref, '-');
                    },
                    child: const Text('Get news with error'),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
