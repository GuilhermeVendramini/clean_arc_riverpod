import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../data/services/http_service_imp.dart';
import '../domain/services/http_service.dart';

final Provider<HttpService> coreHttpServiceProvider =
    Provider<HttpService>(
  (ref) => HttpServiceImp(),
);