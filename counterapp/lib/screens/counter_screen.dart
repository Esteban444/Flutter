import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int counter = 0;

  void increase () {
    counter ++;
    setState(() {});
  }
  void decrese () {
    counter --;
    setState(() {});
  }
  void restart () {
    counter  = 0;
    setState(() {});
  }

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
      floatingActionButton:  FloatingActions(
        increase: increase,
        clean: restart,
        decrement: decrese
        ),
    );
  }
}

class FloatingActions extends StatelessWidget {

  final Function increase;
  final Function decrement;
  final Function clean;

  const FloatingActions({
    super.key, required this.increase, 
    required this.decrement, 
    required this.clean,
  });

  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children:  [

        FloatingActionButton(
          child: const Icon(Icons.add),
          //onPressed: () => setState(() =>counter++)
          onPressed: () => increase(),
        ),

        FloatingActionButton(
          child: const Icon(Icons.clear),
          //onPressed: () => setState(() =>counter = 0)
          onPressed:  () {
             clean();
             }
        ),

        FloatingActionButton(
          child: const Icon(Icons.minimize),
          onPressed: () => decrement(),
          //onPressed: () => setState(() =>counter--)
          ),
      ],
    );
  }
}