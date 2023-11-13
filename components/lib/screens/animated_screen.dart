import 'dart:math';

import 'package:flutter/material.dart';

class AnimatedScreen extends StatefulWidget {
   
  const AnimatedScreen({Key? key}) : super(key: key);

  @override
  State<AnimatedScreen> createState() => _AnimatedScreenState();
}

class _AnimatedScreenState extends State<AnimatedScreen> {

  double _width = 50;
  double _height = 50;
  Color _color = Colors.indigoAccent;
  BorderRadiusGeometry _borderRadius = BorderRadius.circular(10);

  void changeShape()
  {
    final randon = Random();
      _width = randon.nextInt(300).toDouble() + 70;
      _height = randon.nextInt(300).toDouble() + 70;
      _color = Color.fromARGB(
         randon.nextInt(255),
         randon.nextInt(255),
         randon.nextInt(255),
        1
      );
      _borderRadius = BorderRadius.circular(randon.nextInt(100).toDouble() + 10);

      setState(() {
        
      });

    
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animated Container'),
      ),
      body: Center(
         child: AnimatedContainer(
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeOutCubic, // para la animacion
          width: _width,
          height: _height,
          //color: Colors.grey,
          decoration:  BoxDecoration(
              color: _color,
              borderRadius:  _borderRadius
          ),
         ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: changeShape,
        child: const Icon(Icons.play_arrow_outlined,size: 40,),
      ),
    );
  }
}