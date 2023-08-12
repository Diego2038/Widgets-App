

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:wigets_app/presentation/providers/is_lightmode_provider.dart';

class ThemeChangerScreen extends ConsumerWidget {
  
  static const name = 'theme_changer_screen';

  const ThemeChangerScreen({super.key});

  @override
  Widget build(BuildContext context, ref) {
    // final isLightness = ref.watch( isLightmodeProvider );
    final isLightness = ref.watch( themeNotifierProvider ).isLightmode;
    return Scaffold(

      appBar: AppBar(
        title: const Text("Theme changer screen"),
        actions: [
          IconButton(
            onPressed: (){
              // ref.read( isLightmodeProvider.notifier ).update((state) => !state);
              ref.read( themeNotifierProvider.notifier ).toggleLightmode();
            }, 
            icon: Icon( isLightness ? Icons.light_mode : Icons.dark_mode,
              size: 30,
              color: Theme.of(context).colorScheme.primary,
            )
          )
        ],
      ),
      body: const _ThemeChangerView()
    );
  }
}

class _ThemeChangerView extends ConsumerWidget {
  const _ThemeChangerView();

  @override
  Widget build(BuildContext context, ref) {
    final List<Color> colors = ref.watch(colorListProvider);
    // final int globalColorIndex = ref.watch( selectColorProvider);
    final int globalColorIndex = ref.watch( themeNotifierProvider ).selectedColor; 

    return ListView.builder(
      itemCount: colors.length,
      itemBuilder: (context, index) {

        final color = colors[ index ];
        

        return RadioListTile(
          title: Text("Este color", style: TextStyle(color: color, fontWeight: FontWeight.bold),),
          subtitle: Text("${color.value}"),
          activeColor: color,
          value: index, 
          groupValue: globalColorIndex, 
          onChanged: (value){
            // ref.read( selectColorProvider.notifier ).state = value ?? 0;
            ref.read( themeNotifierProvider.notifier ).changeColorIndex(value!);
          }
        );
    },);
  }
}