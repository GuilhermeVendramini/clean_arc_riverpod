import 'package:clean_arq_riverpod/core/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CoreApp extends StatelessWidget {
  const CoreApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ProviderScope(
      child: MaterialApp(
        title: 'Flutter Demo',
        initialRoute: '/',
        routes: Routes.routes,
      ),
    );
  }
}
