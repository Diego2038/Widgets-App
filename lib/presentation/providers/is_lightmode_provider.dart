

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:wigets_app/config/theme/app_theme.dart';

// Listado de colores inmutables
final colorListProvider = Provider((ref) => colorList);

// Un simple booleano
final isLightmodeProvider = StateProvider<bool>((ref) => true);

// Un simple integer
final selectColorProvider = StateProvider<int>((ref) => 0);

// Un objeto de tipo AppTheme (hecho por nosotros)
final themeNotifierProvider = StateNotifierProvider<ThemeNotifier,AppTheme>((ref) => ThemeNotifier());


// Controller o Notifier
class ThemeNotifier extends StateNotifier<AppTheme> {

  // STATE = Estado = new AppTheme();
  ThemeNotifier(): super( AppTheme(isLightmode: true) );

  void toggleLightmode() {
    state = state.copyWith(isLightmode: !state.isLightmode);
  }

  void changeColorIndex( int colorIndex) {
    state = state.copyWith(selectedColor: colorIndex);
  }

}