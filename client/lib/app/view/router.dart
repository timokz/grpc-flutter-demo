import 'package:go_router/go_router.dart';
import 'package:meetup_demo/app/view/home_screen.dart';
import 'package:meetup_demo/app/view/pizza_order_screen.dart';

final router = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) {
        return const HomeScreen();
      },
    ),
    GoRoute(
      path: '/pizza_order',
      builder: (context, state) => const PizzaOrderScreen(),
    ),
  ],
);
