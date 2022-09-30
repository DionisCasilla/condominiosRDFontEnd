import 'package:animate_do/animate_do.dart';
import 'package:condominiosrd/src/bloc/SidebarBloc.dart';
import 'package:condominiosrd/src/pantallas/accesos/index.dart';
import 'package:condominiosrd/src/pantallas/genericos/configOption.dart';
import 'package:condominiosrd/src/pantallas/genericos/sidebar.dart';
import 'package:flutter/foundation.dart';

class BaseLayout extends StatefulWidget {
  final Widget contentWidget;

  const BaseLayout({Key? key, required this.contentWidget}) : super(key: key);

  @override
  State<BaseLayout> createState() => _BaseLayoutState();
}

class _BaseLayoutState extends State<BaseLayout> with SingleTickerProviderStateMixin {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    SidebarBloc.sidebarconfigOption = AnimationController(vsync: this, duration: (Duration(milliseconds: 300)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: kIsWeb ? null : AppBar(),
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
                        IconButton(
                            onPressed: () {
                              SidebarBloc.toggleSidebarConfigOption();
                            },
                            icon: Icon(FontAwesomeIcons.gear)),
                        IconButton(
                            onPressed: () async {
                              await showDialog(
                                  context: context,
                                  builder: ((context) => AlertDialog(
                                        title: Text("Salir"),
                                      )));
                            },
                            icon: Icon(FontAwesomeIcons.doorOpen))
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Stack(
                    children: [
                      Container(
                        padding: EdgeInsets.only(left: 16, top: 20),
                        width: double.infinity,
                        height: double.infinity,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text(
                                  "Titulo",
                                  style: TextStyle(fontSize: 26),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            widget.contentWidget,
                          ],
                        ),
                      ),
                      Align(
                        alignment: Alignment.topRight,
                        child: AnimatedBuilder(
                          animation: SidebarBloc.sidebarconfigOption,
                          builder: (context, _) => Transform.translate(offset: Offset(SidebarBloc.movemenConfigOptiont.value, 0), child: ConfigOption()),
                        ),
                      ),
                      //  SingleChildScrollView(child: widget.contentWidget),

                      // Container(width: 600, child: widget.contentWidget),
                    ],
                  ),
                ),
              ],
            ))
          ],
        ));
  }
}
