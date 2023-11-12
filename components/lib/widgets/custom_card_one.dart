import 'package:components/theme/app_theme.dart';
import 'package:flutter/material.dart';


class CustomCardOne extends StatelessWidget {

  final String  imageUrl;
  final String?  name;

  const CustomCardOne({
    super.key, required this.imageUrl, this.name,
  });


  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      elevation: 20,
      shadowColor: AppTheme.primary.withOpacity(0.4),
       child:  Column(
         children:  [
              FadeInImage(
              placeholder: const AssetImage('assets/loadings/jar-loading.gif'),
              image: NetworkImage(imageUrl),
              width: double.infinity,
              height: 240,
              fit: BoxFit.cover,
              fadeInDuration: const Duration(milliseconds: 300),
              ),
              if(name != null)
             Container(
              alignment: AlignmentDirectional.center,
              padding: const EdgeInsets.only(right: 20,top: 10,bottom: 10),
              child:   Text( name!),
            )
          ],
       ),
      );
  }
}