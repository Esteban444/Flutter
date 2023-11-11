import 'package:flutter/material.dart';

class ListViewScreen1 extends StatelessWidget {

  final persons = const ['Goku', 'Vegueta', 'Wish', 'Bills'];
   
  const ListViewScreen1({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: const Color.fromARGB(255, 235, 234, 234),
      appBar: AppBar(
        centerTitle: true,
        title: const Text('ListView1'),
      ),
      body: ListView.separated(
        itemCount: persons.length,
        itemBuilder: (context, index) => ListTile(
          title: Text(persons[index]),
          trailing: const Icon(Icons.arrow_forward_ios_outlined,color: Colors.indigo,),
          onTap: () => {},
        ),
        separatorBuilder: (context, index) => const Divider(height: 20,color: Colors.white,),
        
      )
    );
  }
}
