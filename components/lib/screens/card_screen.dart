import 'package:flutter/material.dart';

import 'package:components/widgets/widgest.dart';


class CardScreen extends StatelessWidget {
   
  const CardScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Cards'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
        children: const [
           CustomCard(),
           SizedBox(height: 10,),
           CustomCardOne(name: null,imageUrl: 'https://cdn.hobbyconsolas.com/sites/navi.axelspringer.es/public/media/image/2023/05/dragon-ball-super-super-hero-ultima-cinta-akira-toriyama-supera-broly-convierte-pelicula-taquillera-serie-3035658.jpg?tf=3840x',),
            SizedBox(height: 20,),
           CustomCardOne(name: 'Transformacion Ultra instinto.',imageUrl: 'https://cdn.computerhoy.com/sites/navi.axelspringer.es/public/media/image/2017/12/276987-dragon-ball-super-ultra-instinto.jpg?tf=3840x',),
           SizedBox(height: 20,),
           CustomCardOne(/*name:'Transformacion de vegueta.',*/imageUrl: 'https://www.cinemascomics.com/wp-content/uploads/2023/05/vegeta-ultra-instinto-960x540.jpg',),
           SizedBox(height: 100,),
        ],
      )
      );
  }
}
