import 'package:http/http.dart' as http;
import 'package:self_practice/model/model_class.dart';
import 'package:self_practice/service/http_service.dart';
import 'package:self_practice/utils/api_endpoint.dart';

class HomeApi {
  static Future getData() async {
    try {
      http.Response? response =
          await HttpService.getApi(url: EndPointRes.postsApi);
      if (response != null && response.statusCode == 200) {
        print(response.statusCode);
        return postsApiFromJson(response.body);
      }
      return null;
    } catch (e) {
      print(e);
      return null;
    }
  }

  static Future homePagePost(Map<String, dynamic> body) async {
    String url = EndPointRes.postApiDemo;
    try {
      http.Response? response = await HttpService.postApi(
        url: url,
        body: body,
        header: {"Content-Type": "application/x-www-form-urlencoded"},
      );
      if (response != null && response.statusCode == 200) {
        print("respons==================>${response.body}");
      }
    } catch (e) {
      print(e);
    }
  }
}
