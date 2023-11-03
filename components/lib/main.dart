import 'package:flutter/material.dart';

import 'package:components/router/app_routes.dart';


void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Components',
      //home: const ListViewScreen1(),
      initialRoute: AppRoutes.initialroute,
      routes: AppRoutes.routes,
      onGenerateRoute: AppRoutes.onGeneratedRoute
    );
  }
}