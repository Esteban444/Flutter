import 'package:flutter/material.dart';

import 'package:components/theme/app_theme.dart';
import 'package:components/router/app_routes.dart';


class HomeScreen extends StatelessWidget {
   
  const HomeScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {

    final menuOptions = AppRoutes.menuOptions;

    return  Scaffold(
      //backgroundColor: const Color.fromARGB(255, 235, 234, 234),
      appBar: AppBar(
        title: const Text('Home'),
        centerTitle: true,
      ),
      body: ListView.separated(
        itemBuilder: (context, index) => ListTile(
          trailing: Icon(menuOptions[index].icon,color: AppTheme.primary,),
          title:  Text(menuOptions[index].name),
          onTap: () {
            /*  final route = MaterialPageRoute(
              builder: (context) => const ListViewScreen1(),
            );
            Navigator.push(context, route);*/
            Navigator.pushNamed(context, menuOptions[index].route);
          },

        ), 
        separatorBuilder: (context, index) => const Divider(height: 20 ,color: Colors.white), 
        itemCount: menuOptions.length
        ),
    );
  }
}
