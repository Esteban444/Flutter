import 'package:flutter/material.dart';

class ListViewScreen extends StatelessWidget {

  final persons = const ['Goku', 'Vegueta', 'Wish', 'Bills'];
   
  const ListViewScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('ListView'),
      ),
      body: ListView(
        children: [
            ...persons.map((e) => 
            ListTile(
              
              leading: const Icon(Icons.arrow_forward_ios_outlined),
              title: Text(e),
            )).toList(),
        ],
      )
    );
  }
}
