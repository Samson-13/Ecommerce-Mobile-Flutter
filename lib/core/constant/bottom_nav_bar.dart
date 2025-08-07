import 'package:ecommerce_mobile/presentation/pages/home/home.dart';
import 'package:ecommerce_mobile/presentation/pages/profile/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
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
    const Center(
      child: Text(
        'Likes Page',
        style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
      ),
    ),
    const Center(
      child: Text(
        'Search Page',
        style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
      ),
    ),
    const ProfileScreen(),
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
              tabBackgroundColor: Colors.brown[100]!,
              color: Theme.of(context).colorScheme.onSurface,
              selectedIndex: _selectedIndex,
              onTabChange: (index) {
                setState(() {
                  _selectedIndex = index;
                });
              },
              tabs: const [
                GButton(icon: FontAwesomeIcons.house, iconSize: 18),
                GButton(icon: FontAwesomeIcons.heart, iconSize: 18),
                GButton(icon: FontAwesomeIcons.magnifyingGlass, iconSize: 18),
                GButton(icon: FontAwesomeIcons.user, iconSize: 18),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
