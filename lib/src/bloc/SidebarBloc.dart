import 'package:condominiosrd/src/pantallas/accesos/index.dart';

class SidebarBloc {
  static late AnimationController sidebarmenu;
  static late AnimationController sidebarconfigOption;
  static bool sidebarmenuIsOpen = false;
  static bool sidebarconfigOptionIsOpen = false;

  static Animation<double> movement = Tween<double>(begin: -200, end: 0).animate(CurvedAnimation(parent: sidebarmenu, curve: Curves.easeInOut));
  static Animation<double> movemenConfigOptiont = Tween<double>(begin: 200, end: 0).animate(CurvedAnimation(parent: sidebarconfigOption, curve: Curves.easeInOut));

  static void openSidebarconfigOption() {
    sidebarconfigOptionIsOpen = true;
    sidebarconfigOption.forward();
  }

  static void closeSidebarconfigOption() {
    sidebarconfigOptionIsOpen = false;
    sidebarconfigOption.reverse();
  }

  static void toggleSidebarConfigOption() {
    if (sidebarconfigOptionIsOpen) {
      sidebarconfigOption.reverse();
    } else {
      sidebarconfigOption.forward();
    }
    sidebarconfigOptionIsOpen = !sidebarconfigOptionIsOpen;
  }

  static void toggleSidebarMenu() {
    //   if (sidebarconfigOptionIsOpen) {
    //     sidebarconfigOption.reverse();
    //   } else {
    //     sidebarconfigOption.forward();
    //   }
    //   sidebarconfigOptionIsOpen = !sidebarconfigOptionIsOpen;
  }
}
