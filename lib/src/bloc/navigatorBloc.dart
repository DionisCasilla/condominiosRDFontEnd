import 'package:condominiosrd/src/pantallas/accesos/index.dart';

class NavigatorBloc with ChangeNotifier {
  goTo({required BuildContext context, required String url}) {
    notifyListeners();
  }
}
