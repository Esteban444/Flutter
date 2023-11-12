import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AlertScreen extends StatelessWidget {
   
  const AlertScreen({Key? key}) : super(key: key);

  void dialogIos(BuildContext context){
     showCupertinoDialog(
      barrierDismissible: false,
      context: context, 
      builder: (context) {
        return CupertinoAlertDialog(
          
           title: const Text('Alert'),
           content: const  Column(
              mainAxisSize: MainAxisSize.min,
              children: [
              Text('Aca va el contenido de la alerta.'),
              SizedBox(height: 10,),
              FlutterLogo(size: 100,)
            ]),
            actions: [
              TextButton(
                onPressed: () => Navigator.pop(context), 
                child: const Text('Cancelar')),
                TextButton(
                onPressed: () => Navigator.pop(context), 
                child: const Text('OK'))
            ],
        );
      });
  }

  void displayDialogAndroid(BuildContext context) {
      showDialog(
        barrierDismissible: false,
        context: context, 
        builder: (context) {
          return  AlertDialog(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            alignment: Alignment.topCenter,
            elevation: 5,
            title: const Text('Alert'),
            content: const Column(
              mainAxisSize: MainAxisSize.min,
              children: [
              Text('Aca va el contenido de la alerta.'),
              SizedBox(height: 10,),
              FlutterLogo(size: 100,)
            ]),
            actions: [
              TextButton(
                onPressed: () => Navigator.pop(context), 
                child: const Text('Cancelar')),
                const SizedBox(height: 10,),
                TextButton(
                onPressed: () => Navigator.pop(context), 
                child: const Text('OK'))
            ],
          );
        });
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Center(
         child:   ElevatedButton(
          //style: ElevatedButton.styleFrom(
          //  backgroundColor: AppTheme.primary,
          //  shape: const StadiumBorder() ,
          //  elevation: 1
          //), 
          //onPressed:  () =>  dialogIos(context), 
          //segun el sistema operativo
          onPressed:  () => Platform.isAndroid 
          ? displayDialogAndroid(context)
          : dialogIos(context), 
          child: const Padding(
            padding:  EdgeInsets.all(10),
            child:  Text('Mostrar Alerta.',style: TextStyle(fontSize: 16),),
          )
          
         ),
      
    ),
    floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.close),
        onPressed: () {
            Navigator.pop(context);
        }
    ),
    );
  }
}