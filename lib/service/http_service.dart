import 'package:http/http.dart' as http;

class HttpService {
  static getApi({required String url}) {
    try {
      print('Url : ========================= >>>>>>  $url');
      return http.get(Uri.parse(url));
    } catch (e) {
      print(e);
      return null;
    }
  }

  static Future<http.Response?> postApi({
    required String url,
    Map<String, dynamic>? body,
    Map<String, String>? header,
  }) async {
    try {
      print("==============>${url}");
      print("=================>${body}");
      print("=======================>${header}");
      return await http.post(Uri.parse(url), body: body, headers: header);
    } catch (e) {
      print(e);
    }
    return null;
  }
}
