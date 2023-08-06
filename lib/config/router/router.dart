

import 'package:go_router/go_router.dart';
import 'package:wigets_app/presentation/screens.dart'; 

final appRouter = GoRouter(
  initialLocation: "/",
  routes: [

    GoRoute(
      path: "/",
      builder: (context, state) => const HomeScreen(),
    ),

    GoRoute(
      path: "/buttons",
      builder: (context, state) => const ButtonsScreen(),
    ),

    GoRoute(
      path: "/cards",
      builder: (context, state) => const CardsScreen(),
    ),
  ]
);