import 'package:http/http.dart' as http;

enum RequestType { get, put, post, patch }

class NetworkService {
  const NetworkService._();

  static Map<String, String> _getHeaders(var token, var contentType) =>
      {'Content-Type': contentType, 'Authorization': 'Bearer $token'};

  static Future<http.Response>? _createRequest({
    required RequestType requestType,
    required Uri uri,
    Map<String, String>? headers,
    String? body,
  }) {
    switch (requestType) {
      case RequestType.get:
        return http.get(uri, headers: headers).timeout(
          const Duration(seconds: 30),
          onTimeout: () {
            return http.Response('Network error, timeout', 408);
          },
        );
      case RequestType.post:
        return http.post(uri, headers: headers, body: body).timeout(
          const Duration(seconds: 120),
          onTimeout: () {
            return http.Response('Network error, timeout', 408);
          },
        );
      case RequestType.put:
        return http.put(uri, headers: headers, body: body).timeout(
          const Duration(seconds: 120),
          onTimeout: () {
            return http.Response('Network error, timeout', 408);
          },
        );
      case RequestType.patch:
        return http.patch(uri, headers: headers, body: body).timeout(
          const Duration(seconds: 120),
          onTimeout: () {
            return http.Response('Network error, timeout', 408);
          },
        );
    }
  }

  static Future<http.Response?>? sendRequest({
    required RequestType requestType,
    required String url,
    String token = '',
    String contentType = 'application/json',
    String? body,
  }) async {
    try {
      final header = _getHeaders(token, contentType);

      final response = await _createRequest(
          requestType: requestType,
          uri: Uri.parse(url),
          headers: header,
          body: body);
      return response;
    } catch (e) {
      return null;
    }
  }
}
