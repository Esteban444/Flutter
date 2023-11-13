import 'package:flutter/material.dart';

class AvatarScreen extends StatelessWidget {
   
  const AvatarScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Avatar'),
        actions: [
          Container(
            margin:  const EdgeInsets.only(right: 5),
            child:  CircleAvatar(
              backgroundColor: Colors.indigo[900],
              child: const Text('UI'),
            ),
          )
        ],
      ),
      body: const Center(
         child: CircleAvatar(
          maxRadius: 100,
          backgroundImage: NetworkImage('https://cdn.computerhoy.com/sites/navi.axelspringer.es/public/media/image/2017/12/276987-dragon-ball-super-ultra-instinto.jpg?tf=3840x'),
         )
      ),
    );
  }
}