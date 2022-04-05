abstract class HttpService {
  Future<dynamic> get<T>(
    Uri uri, {
    Map<String, String>? headers,
  });
}
