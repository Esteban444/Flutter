import 'package:flutter/material.dart';


import 'package:components/screens/listview_screen1.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Components',
      home: ListViewScreen1()
    );
  }
}