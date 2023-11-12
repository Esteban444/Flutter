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
        ),
        //Floating Action Bottons
        floatingActionButtonTheme: const FloatingActionButtonThemeData(
          backgroundColor: AppTheme.primary,
          elevation: 3
        ),
        ///  Elevation Bottons 
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: AppTheme.primary,
            shape: const StadiumBorder() ,
            elevation: 1
          ),
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