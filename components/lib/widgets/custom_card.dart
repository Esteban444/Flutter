import 'package:flutter/material.dart';

import 'package:components/theme/app_theme.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return  Card(
     child: Column(
       children: [
         const ListTile(
           leading: Icon(Icons.photo_album_outlined, color: AppTheme.primary,),
           title: Text('Title'),
           subtitle: Text('Este es un subtitulo.'),
         ),
         Padding(
           padding: const EdgeInsets.all(8.0),
           child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                onPressed: () {}, 
                child: const Text('Cancel'),
              ),
              TextButton(
                onPressed: () {}, 
                child: const Text('OK')
              )
            ],
           ),
         )
       ],
     ),
    );
  }
}