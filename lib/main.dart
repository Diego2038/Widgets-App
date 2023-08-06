import 'package:flutter/material.dart';
import 'package:wigets_app/config/theme/app_theme.dart';
import 'package:wigets_app/presentation/screen/home/home_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      theme: AppTheme(selectedColor: 1
      ).getTheme(),
      debugShowCheckedModeBanner: false,
      home:  const HomeScreen()
    );
  }
}
