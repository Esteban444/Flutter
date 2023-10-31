import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int counter = 10;

  @override
  Widget build(BuildContext context) {

    const fontSizeStyle =  TextStyle(fontSize: 30, color: Colors.black54);

    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      appBar: AppBar(
        centerTitle: true,
        title: const Text('CounterScreen'),
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
          setState(() {
           //counter++;
          });
      },),
    );
  }
}