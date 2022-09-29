import 'package:condominiosrd/src/pantallas/accesos/index.dart';
import 'package:condominiosrd/src/pantallas/genericos/logo.dart';
import 'package:condominiosrd/src/pantallas/genericos/menu_option_sidebar.dart';
import 'package:condominiosrd/src/pantallas/genericos/usuario_sidebar.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Sidebar extends StatelessWidget {
  const Sidebar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PhysicalModel(
      color: Color(0xff343a40),
      elevation: 3,
      shadowColor: Color(0xff343a40).withOpacity(0.6),
      child: Container(
        width: 200,
        height: double.infinity,
        decoration: BoxDecoration(
          color: Color(0xff343a40),
        ),
        child: ListView(
          children: [
            LogoApp(),
            SizedBox(
              height: 6,
            ),
            Divider(
              color: Colors.grey.shade400,
              thickness: 0.2,
            ),
            UsuarioSidebar(),
            Divider(
              color: Colors.grey.shade400,
              thickness: 0.2,
            ),
            SizedBox(
              height: 6,
            ),
            MenuOptionSidebar(
                imageIcono: Icon(
                  FontAwesomeIcons.gauge,
                  color: Colors.grey.shade400,
                  size: 20,
                ),
                menu: "Home",
                hasChildrens: false,
                onClick: () {
                  print("object");
                })
          ],
        ),
      ),
    );
  }
}
