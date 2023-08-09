import 'package:flutter_getx_tut/urls.dart';
import 'package:http/http.dart' as http;

class ApiService {
  Future<http.Response> requestGet() async {
    return await http.get(Uri.parse(Urls.albumApiURL));
  }
}
