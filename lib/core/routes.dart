import 'package:flutter/widgets.dart';

import '../features/news/presentation/pages/news.page.dart';

class Routes {
  Routes._();

  static Map<String, Widget Function(BuildContext)> routes = {
    '/': (context) => const NewsPage(),
  };
}