import 'package:ecommerce_mobile/core/constant/bottom_nav_bar.dart';
import 'package:ecommerce_mobile/presentation/pages/auth/login_screen.dart';
import 'package:ecommerce_mobile/presentation/pages/home/home.dart';
import 'package:ecommerce_mobile/presentation/pages/on_boarding_screen.dart/on_boarding_screen.dart';
import 'package:go_router/go_router.dart' show GoRoute, GoRouter;

final GoRouter router = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(path: '/', builder: (context, state) => const OnBoardingScreen()),
    GoRoute(path: '/login', builder: (context, state) => const LoginScreen()),
    GoRoute(path: '/home', builder: (context, state) => const HomeScreen()),
    GoRoute(
      path: '/navbar',
      builder: (context, state) => const CustomBottomNavigationBar(),
    ),
  ],
);
