import '../../domain/services/http_service.dart';
import 'package:http/http.dart' as http;

class HttpServiceImp implements HttpService {
  final http.Client client = http.Client();

  @override
  Future<http.Response> get<T>(
    Uri uri, {
    Map<String, String>? headers,
  }) async {
    return await client.get(
      uri,
      headers: headers,
    );
  }
}
