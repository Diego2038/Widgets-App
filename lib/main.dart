import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:wigets_app/config/router/router.dart';
import 'package:wigets_app/config/theme/app_theme.dart';
import 'package:wigets_app/presentation/providers/is_lightmode_provider.dart'; 

void main() {
  runApp(ProviderScope(child: const MainApp()));
}

class MainApp extends ConsumerWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    // final int colorGlobalSelected = ref.watch( selectColorProvider );
    // final bool isLightModeGlobal = ref.watch( isLightmodeProvider );
    final themeProvider = ref.watch( themeNotifierProvider );

    return  MaterialApp.router(
      routerConfig: appRouter,
      title: "Flutter Widgets 😭👌",
      theme: themeProvider.getTheme(),
      debugShowCheckedModeBanner: false, 
    );
  }
}
