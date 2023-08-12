import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:wigets_app/config/menu/menu_items.dart';

class SideMenu extends StatefulWidget {
  final GlobalKey<ScaffoldState> scaffoldKey;
  const SideMenu({
    super.key,
    required this.scaffoldKey
  });

  @override
  State<SideMenu> createState() => _SideMenuState();
}

class _SideMenuState extends State<SideMenu> {

  int navDrawerIndex = 0;

  @override
  Widget build(BuildContext context) {

    final hasNotch = MediaQuery.of(context).viewPadding.top > 30;

    return NavigationDrawer(
      selectedIndex:  navDrawerIndex,
      onDestinationSelected: (value) {
        setState(() { 
          navDrawerIndex = value;
        });
        final menuItem = appMenuItems[value];
        context.push( menuItem.link );
        widget.scaffoldKey.currentState?.closeDrawer();
      },
      children:  [

      Padding(
        padding: EdgeInsets.fromLTRB(28, (hasNotch ? 0 : 20), 16, 10),
        child: const Text("Main"),
      ),

      ...appMenuItems.map((item) => NavigationDrawerDestination(icon: Icon(item.icon), label: Text(item.title))).toList().sublist(0,3),

      const Padding(padding: EdgeInsets.fromLTRB(10, 20, 10, 12),
      child: Divider()),

      const Padding(
        padding: EdgeInsets.fromLTRB(28, 20, 16, 10),
        child: Text("More actions"),
      ),

      ...appMenuItems.map((item) => NavigationDrawerDestination(icon: Icon(item.icon), label: Text(item.title))).toList().sublist(3),

    ]);
  }
}