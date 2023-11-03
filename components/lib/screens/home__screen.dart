import 'package:flutter/material.dart';

import 'package:components/screens/screens.dart';

class HomeScreen extends StatelessWidget {
   
  const HomeScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: const Color.fromARGB(255, 235, 234, 234),
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: const Text('Home'),
        centerTitle: true,
      ),
      body: ListView.separated(
        itemBuilder: (context, index) => ListTile(
          trailing: const Icon(Icons.arrow_forward_ios_outlined),
          title: const Text('Nombre ruta'),
          onTap: () {
            /*  final route = MaterialPageRoute(
              builder: (context) => const ListViewScreen1(),
            );
            Navigator.push(context, route);*/
            Navigator.pushNamed(context, 'listview1');
          },

        ), 
        separatorBuilder: (context, index) => const Divider(height: 20 ,color: Colors.white), 
        itemCount: 10
        ),
    );
  }
}
