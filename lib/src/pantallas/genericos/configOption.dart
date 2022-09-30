import 'package:condominiosrd/src/pantallas/accesos/index.dart';
import 'package:condominiosrd/src/pantallas/genericos/logo.dart';
import 'package:condominiosrd/src/pantallas/genericos/menu_option_sidebar.dart';
import 'package:condominiosrd/src/pantallas/genericos/usuario_sidebar.dart';

class ConfigOption extends StatelessWidget {
  const ConfigOption({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PhysicalModel(
      color: Color(0xff343a40),
      elevation: 10,
      shadowColor: Color(0xff343a40).withOpacity(0.6),
      child: Container(
        width: 200,
        height: double.infinity,
        decoration: BoxDecoration(
          color: Color(0xff343a40),
        ),
        child: ListView(
          children: [
            SizedBox(
              height: 20,
            ),
            Center(
              child: Text(
                "Configuraciones",
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
            )
          ],
        ),
      ),
    );
  }
}
