import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {

    const fontSizeStyle =  TextStyle(fontSize: 30, color: Colors.black54);
    int counter = 10;

    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      appBar: AppBar(
        title: const Text('HomeScreen'),
        elevation: 5.0,
      ),
      body:  Center(
        child:  Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children:[
            const Text('Click Count',style: fontSizeStyle ,),
            Text('$counter',style: fontSizeStyle ,),
            
            ] 
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          counter++;
          print('clicks: $counter');
      },),
    );
  }
}