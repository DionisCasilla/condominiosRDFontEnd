import 'package:condominiosrd/src/pantallas/accesos/index.dart';

class LogoApp extends StatelessWidget {
  const LogoApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            FontAwesomeIcons.building,
            color: Colors.grey.shade400,
          ),
          SizedBox(
            width: 5,
          ),
          Text(
            "Condominos RD",
            style: TextStyle(color: Colors.grey.shade400, fontSize: 16, fontWeight: FontWeight.w600),
          )
        ],
      ),
    );
  }
}
