import 'dart:convert';

import 'package:condominiosrd/src/models/loginModel.dart';
import 'package:http/http.dart' as http;
import 'package:condominiosrd/src/provider/index.dart';

class UserProvider {
  Map<String, String> requestHeaders = {'Content-type': 'application/json', 'Accept': 'application/json'};

  Future<LoginResponseModel> login() async {
    final url = Uri.parse(EndPoint.baseUrl + "usuarios/login");
    final _body = {"documento_numero": "002-0153784-4", "password": "123456"};

    final _response = await http.post(url, body: jsonEncode(_body), headers: requestHeaders);

    return loginResponseModelFromJson(_response.body);
  }
}
