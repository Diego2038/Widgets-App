import 'package:flutter/material.dart';
import 'package:wigets_app/config/router/router.dart';
import 'package:wigets_app/config/theme/app_theme.dart'; 

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp.router(
      routerConfig: appRouter,
      title: "Flutter Widgets 😭👌",
      theme: AppTheme(selectedColor: 1
      ).getTheme(),
      debugShowCheckedModeBanner: false, 
    );
  }
}
