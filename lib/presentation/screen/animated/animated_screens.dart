import 'dart:math' show Random;
import 'package:flutter/material.dart';

class AnimatedScreens extends StatefulWidget {
  
  static const name = "animated_screens";
  
  const AnimatedScreens({super.key});

  @override
  State<AnimatedScreens> createState() => _AnimatedScreensState();
}

class _AnimatedScreensState extends State<AnimatedScreens> {

  double width = 50;
  double height = 50;
  Color color = Colors.indigo;
  double borderRadius = 10.0; 

  void changeShape () {
    final random = Random();
    width = random.nextInt(300) + 120;
    height = random.nextInt(300) + 120;
    borderRadius = random.nextDouble() * 300;
    color = Color.fromRGBO(
      random.nextInt(255), // red
      random.nextInt(255), // green
      random.nextInt(255), // blue
      1, // opaciy
    );

    setState(() {
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Animated Screen"),
      ),

      body: Center(
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 400),
          curve: Curves.bounceOut,
          width: (width <= 0) ? 0 : width,
          height: (height <= 0) ? 0 : height,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular((borderRadius <= 0) ? 0 : borderRadius)
          ),
        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: changeShape,
        child: const Icon(Icons.play_arrow_rounded),
      ),

    );
  }
}