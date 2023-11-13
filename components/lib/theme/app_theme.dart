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
        ),
        //Decoration text inputs
        inputDecorationTheme: const InputDecorationTheme(
          floatingLabelStyle: TextStyle(color: AppTheme.primary),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide( color: AppTheme.primary),
            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10),bottomRight: Radius.circular(10))
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide( color: AppTheme.primary),
            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10),bottomRight: Radius.circular(10))
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10),bottomRight: Radius.circular(10))
          )
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