import 'package:flutter/material.dart';

const colorList = <Color>[
  Colors.red,
  Colors.green,
  Colors.blue,
  Colors.yellow,
  Colors.purple,
  Colors.orange,
  Colors.pink,
  Colors.teal,
  Colors.cyan,
  Colors.amber,
  Colors.lime,
  Colors.indigo,
  Colors.brown,
  Colors.grey,
  Colors.blueGrey,
  Colors.black,
  Colors.white,
];
 
class AppTheme{ //Sirve para cambiar el color de la app personalizada 
  
  final int selectedColor;

  AppTheme({
     this.selectedColor = 0
    }): assert(selectedColor >= 0 && selectedColor <= colorList.length - 1);

    ThemeData getTheme() => ThemeData(
      useMaterial3: true,
      colorSchemeSeed: colorList[selectedColor],
      appBarTheme: const AppBarTheme(
        centerTitle: true
      )
    );

  

}