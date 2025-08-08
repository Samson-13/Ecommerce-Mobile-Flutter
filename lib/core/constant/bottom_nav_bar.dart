import 'package:ecommerce_mobile/ui/home/home.dart';
import 'package:ecommerce_mobile/ui/more/more_screen.dart';
import 'package:ecommerce_mobile/ui/search/search_screen.dart';
import 'package:ecommerce_mobile/ui/wishlist/wishlist_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class CustomBottomNavigationBar extends StatefulHookConsumerWidget {
  const CustomBottomNavigationBar({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState
    extends ConsumerState<CustomBottomNavigationBar> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    const HomeScreen(),
    const SearchScreen(),
    const WishlistScreen(),
    const MoreScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: IndexedStack(
        index: _selectedIndex,
        children: _pages, // Keeps page state alive
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.surface,
          boxShadow: [
            BoxShadow(
              blurRadius: 20,
              color: Theme.of(
                context,
              ).colorScheme.onSurface.withValues(alpha: 0.1),
            ),
          ],
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
            child: GNav(
              rippleColor: Colors.brown[300]!,
              hoverColor: Colors.brown[100]!,
              gap: 8,
              activeColor: Theme.of(context).colorScheme.surface,
              iconSize: 24,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
              duration: const Duration(milliseconds: 400),
              tabBackgroundColor: Colors.black,
              color: Theme.of(context).colorScheme.onSurface,
              selectedIndex: _selectedIndex,
              onTabChange: (index) {
                FocusScope.of(context).unfocus(); // This dismisses keyboard

                setState(() {
                  _selectedIndex = index;
                });
              },
              tabs: const [
                GButton(icon: Icons.house, iconSize: 18),
                GButton(icon: Icons.search, iconSize: 18),

                GButton(icon: Icons.favorite, iconSize: 18),
                GButton(icon: Icons.more_horiz, iconSize: 18),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
