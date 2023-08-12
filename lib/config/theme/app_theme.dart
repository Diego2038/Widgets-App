


import 'package:flutter/material.dart';

const List<Color> colorList = [
  Colors.blue,
  Colors.red,
  Colors.yellow,
  Colors.deepOrange,
  Colors.white,
  Colors.indigo,
  Colors.amber,
  Colors.green,
  Colors.grey,
]; 

class AppTheme {

  final int selectedColor;
  final bool isLightmode;

  AppTheme({
    this.selectedColor = 0,
    required this.isLightmode
    }):assert(selectedColor >= 0, 'Selected color must be greater than zero'),
      assert(selectedColor <= colorList.length, "selected color value must be smaller than ${ colorList.length - 1 }, and you put $selectedColor");

  ThemeData getTheme () => ThemeData(
    brightness: isLightmode ? Brightness.light : Brightness.dark,
    useMaterial3: true,
    colorSchemeSeed: colorList[ selectedColor ],
    appBarTheme: const AppBarTheme(
      centerTitle: false
    )
  ); 


}