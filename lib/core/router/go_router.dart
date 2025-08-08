import 'package:ecommerce_mobile/core/constant/bottom_nav_bar.dart';
import 'package:ecommerce_mobile/ui/auth/login_screen.dart';
import 'package:ecommerce_mobile/ui/cart/cart_screen.dart';
import 'package:ecommerce_mobile/ui/checkout/checkout_screen.dart';
import 'package:ecommerce_mobile/ui/home/home.dart';
import 'package:ecommerce_mobile/ui/more/more_screen.dart';
import 'package:ecommerce_mobile/ui/product/all_product_screen.dart';
import 'package:ecommerce_mobile/ui/product/widget/single_product.dart';
import 'package:ecommerce_mobile/ui/profile/profile_screen.dart';
import 'package:ecommerce_mobile/ui/profile/widget/edit_profile_screen.dart';
import 'package:ecommerce_mobile/ui/search/search_screen.dart';
import 'package:ecommerce_mobile/ui/wishlist/wishlist_screen.dart';
import 'package:go_router/go_router.dart' show GoRoute, GoRouter;

final GoRouter router = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const CustomBottomNavigationBar(),
    ),
    GoRoute(path: '/login', builder: (context, state) => const LoginScreen()),
    GoRoute(path: '/home', builder: (context, state) => const HomeScreen()),
    GoRoute(path: '/search', builder: (context, state) => const SearchScreen()),
    GoRoute(
      path: '/wishlist',
      builder: (context, state) => const WishlistScreen(),
    ),
    GoRoute(path: '/more', builder: (context, state) => const MoreScreen()),
    GoRoute(
      path: '/edit_profile',
      builder: (context, state) => const EditProfileScreen(),
    ),
    GoRoute(
      path: '/profile',
      builder: (context, state) => const ProfileScreen(),
    ),
    GoRoute(
      path: '/search',
      builder: (context, state) => const WishlistScreen(),
    ),
    GoRoute(
      path: '/navbar',
      builder: (context, state) => const CustomBottomNavigationBar(),
    ),
    GoRoute(
      path: '/allProducts',
      builder: (context, state) => AllProductScreen(),
    ),
    GoRoute(
      path: '/productDetail',
      builder: (context, state) => ProductDetailScreen(),
    ),
    // GoRoute(
    //   path: '/allCategorys',
    //   builder: (context, state) => CategoryWidget(),
    // ),
    GoRoute(path: '/cart', builder: (context, state) => CartScreen()),
    GoRoute(path: '/checkout', builder: (context, state) => CheckoutScreen()),
  ],
);
