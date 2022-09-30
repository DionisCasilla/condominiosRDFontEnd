import 'package:condominiosrd/src/pantallas/accesos/index.dart';
import 'package:flutter/material.dart';

class UsuarioSidebar extends StatelessWidget {
  const UsuarioSidebar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 20, right: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            width: 28,
            height: 28,
            child: CircleAvatar(
              backgroundColor: Colors.white,
              child: Icon(FontAwesomeIcons.user, size: 16),
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Text(
            "Dionys Casilla",
            style: TextStyle(color: Colors.grey.shade400, fontSize: 14, fontWeight: FontWeight.w600),
          )
        ],
      ),
    );
  }
}
