import 'package:flutter/material.dart';

import 'package:components/widgets/widgest.dart';

class InputScreen extends StatelessWidget {
   
  const InputScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Inputs And Forms'),
      ),
      body: const SingleChildScrollView(
        child:  Padding(
          padding:  EdgeInsets.symmetric(horizontal: 20,vertical: 10),
          child: Column(
            children: [
              CustomInputField(labelText: 'Name',hintText
              : 'Name of user.',)
            ],
          ),
        ),
      )
      );
  }
}

