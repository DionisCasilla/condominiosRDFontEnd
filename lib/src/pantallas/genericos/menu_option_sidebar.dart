import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MenuOptionSidebar extends StatefulWidget {
  final Icon imageIcono;
  final String menu;
  final bool hasChildrens;
  final VoidCallback onClick;
  bool isActive;

  MenuOptionSidebar({Key? key, required this.imageIcono, required this.menu, required this.hasChildrens, required this.onClick, this.isActive = false}) : super(key: key);

  @override
  State<MenuOptionSidebar> createState() => _MenuOptionSidebarState();
}

class _MenuOptionSidebarState extends State<MenuOptionSidebar> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      height: 30,
      width: 180,
      duration: Duration(milliseconds: 250),
      color: isHovered
          ? Colors.white.withOpacity(0.3)
          : widget.isActive
              ? Colors.white.withOpacity(0.3)
              : Colors.transparent,
      child: GestureDetector(
        onTap: widget.onClick,
        child: MouseRegion(
          onEnter: (_) => setState(() => isHovered = true),
          onExit: (_) => setState(
            () => isHovered = false,
          ),
          child: Container(
            //color: Colors.red,
            padding: EdgeInsets.only(left: 20, right: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                widget.imageIcono,
                SizedBox(
                  width: 10,
                ),
                Text(
                  widget.menu,
                  style: TextStyle(color: Colors.grey.shade400, fontSize: 14, fontWeight: FontWeight.w600),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
