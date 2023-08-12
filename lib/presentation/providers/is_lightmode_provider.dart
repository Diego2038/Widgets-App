

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:wigets_app/config/theme/app_theme.dart';

final isLightmodeProvider = StateProvider<bool>((ref) => true);

final colorListProvider = Provider((ref) => colorList);

final selectColorProvider = StateProvider<int>((ref) => 0);