import 'dart:js';

import 'package:condominiosrd/src/models/loginModel.dart';
import 'package:condominiosrd/src/pantallas/accesos/index.dart';
import 'package:condominiosrd/src/provider/index.dart';
import 'package:go_router/go_router.dart';

class LoginBloc with ChangeNotifier {
  bool isLogin = false;
  String tokenUser = "";
  late ResultData? userInfo;

  final _userProvider = UserProvider();

  Future<void> loginUser() async {
    final _resp = await _userProvider.login();
    if (_resp.success) {
      tokenUser = _resp.resultData!.token;
      userInfo = _resp.resultData!;
      isLogin = true;
    }
    notifyListeners();
  }

  loginOut() {
    tokenUser = "";
    isLogin = false;
    userInfo = null;
    notifyListeners();
  }
}
