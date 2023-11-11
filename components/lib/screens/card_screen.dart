import 'package:flutter/material.dart';

import 'package:components/widgets/widgest.dart';


class CardScreen extends StatelessWidget {
   
  const CardScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Cards'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
        children: const [
           CustomCard()
        ],
      )
      );
  }
}
