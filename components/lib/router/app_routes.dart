import 'package:flutter/material.dart';

import 'package:components/screens/screens.dart';
import 'package:components/models/models.dart';

class AppRoutes {
  static const initialroute = 'home';

  static final menuOptions  =  <MenuOptions>[
    MenuOptions(route: 'home', icon: Icons.home, name: 'Home', screen: const HomeScreen()),
    MenuOptions(route: 'alert', icon: Icons.add_alert_outlined, name: 'Alert', screen: const AlertScreen()),
    MenuOptions(route: 'card', icon: Icons.card_membership_outlined, name: 'Card', screen: const CardScreen()),
    MenuOptions(route: 'listview', icon: Icons.list, name: 'ListView', screen: const ListViewScreen()),
    MenuOptions(route: 'listview1', icon: Icons.list_alt_outlined, name: 'ListView One', screen: const ListViewScreen1()),
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes(){
    Map<String, Widget Function(BuildContext)> appRoutes = {

    };
    for (final option in menuOptions) {
      appRoutes.addAll({option.route:(context) => option.screen,});
    }
    return appRoutes;
  }
  //static Map<String, Widget Function(BuildContext)> routes = {
  //      'home':(context) => const HomeScreen(),
  //      'alert':(context) => const AlertScreen(),
  //      'card':(context) => const CardScreen(),
  //      'listview': (BuildContext context,) =>  const ListViewScreen(),
  //      'listview1': (BuildContext context,) =>  const ListViewScreen1(),
  //    };

      static Route<dynamic> onGeneratedRoute (RouteSettings settings) {
        return MaterialPageRoute(
              builder: (context) => const ListViewScreen1(),
        );
      }
}
