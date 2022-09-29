import 'package:animate_do/animate_do.dart';
import 'package:condominiosrd/src/pantallas/accesos/index.dart';
import 'package:condominiosrd/src/pantallas/genericos/sidebar.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Row(
      children: [
        Sidebar(),
        Expanded(
            child: Column(
          children: [
            PhysicalModel(
              color: Colors.white54,
              elevation: 6,
              child: Container(
                color: Colors.white.withOpacity(0.8),
                height: 68,
                child: Row(
                  children: [
                    IconButton(onPressed: () {}, icon: Icon(FontAwesomeIcons.bars)),
                    Spacer(),
                    IconButton(onPressed: () {}, icon: Icon(FontAwesomeIcons.gear)),
                    IconButton(onPressed: () {}, icon: Icon(FontAwesomeIcons.doorOpen))
                  ],
                ),
              ),
            ),
            Expanded(
              child: Stack(
                children: [
                  FadeInRight(duration: Duration(milliseconds: 300), child: Align(alignment: Alignment.topRight, child: Sidebar())),
                  Center(
                    child: Text(
                      "home",
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ))
      ],
    ));
  }
}
