import 'package:ecommerce_mobile/l10n/l10n.dart';
import 'package:ecommerce_mobile/widgets/list_tile_options.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class MoreScreen extends StatelessWidget {
  const MoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Center(
              child: CircleAvatar(
                radius: 60,
                backgroundImage: NetworkImage(
                  'https://i.pinimg.com/736x/c9/fe/d9/c9fed96956b5c9fd9c00135d2d32f8e4.jpg',
                ), // Replace with actual image
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              'Samson Badding', // Replace with actual name
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const Text(
              'samson@email.com', // Replace with actual email
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
            const SizedBox(height: 20),
            buildListTileOption(
              icon: Icons.person_outline,
              label: context.l10n.profile,
              onTap: () => context.push("/profile"),
            ),
            buildListTileOption(
              icon: Icons.shopping_bag_outlined,
              label: "My Orders",
              onTap: () => context.push("/orders"),
            ),
            buildListTileOption(
              icon: Icons.settings_outlined,
              label: context.l10n.profile,
              onTap: () => context.push("/profile"),
            ),
            buildListTileOption(
              icon: Icons.shield_outlined,
              label: context.l10n.profile,
              onTap: () => context.push("/profile"),
            ),
            buildListTileOption(
              icon: Icons.logout,
              label: context.l10n.profile,
              onTap: () => context.push("/profile"),
            ),
          ],
        ),
      ),
    );
  }
}
