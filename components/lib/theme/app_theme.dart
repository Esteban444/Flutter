import 'package:flutter/material.dart';

class AppTheme{

  static const Color primary = Color.fromARGB(255, 52, 79, 231);

  static final ThemeData lightTheme = ThemeData.light().copyWith(
        primaryColor: primary,

        appBarTheme: const AppBarTheme(
            color: primary,
            elevation: 0,

        ),
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(foregroundColor: primary)
        )    
  );

  static final ThemeData darkTheme = ThemeData.dark().copyWith(
        primaryColor: primary,

        appBarTheme: const AppBarTheme(
            color: primary,
            elevation: 0,

        ) ,
        
  );
}