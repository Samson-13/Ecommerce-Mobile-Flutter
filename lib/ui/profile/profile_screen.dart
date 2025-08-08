import 'package:ecommerce_mobile/widgets/list_tile_options.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Profile"), centerTitle: true),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 24),
        child: Column(
          children: [
            // Profile Avatar & Name
            Center(
              child: Column(
                children: [
                  const CircleAvatar(
                    radius: 60,
                    backgroundImage: NetworkImage(
                      "https://i.pinimg.com/736x/c9/fe/d9/c9fed96956b5c9fd9c00135d2d32f8e4.jpg",
                    ),
                  ),
                  const Gap(12),
                  const Text(
                    "John Doe",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  const Text(
                    "johndoe@example.com",
                    style: TextStyle(color: Colors.grey),
                  ),
                  const Gap(4),
                  const Text(
                    "+91 98765 43210",
                    style: TextStyle(color: Colors.grey),
                  ),
                  const Gap(4),
                  const Text(
                    "123, Green Street, Delhi, India",
                    style: TextStyle(color: Colors.grey),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
            const Gap(24),

            // Profile Options
            Expanded(
              child: ListView(
                children: [
                  buildListTileOption(
                    icon: Icons.person_outline,
                    label: "Edit Profile",
                    onTap: () => context.push("/edit_profile"),
                  ),

                  buildListTileOption(
                    icon: Icons.favorite_border,
                    label: "Wishlist",
                    onTap: () => context.push("/wishlist"),
                  ),
                  buildListTileOption(
                    icon: Icons.location_on_outlined,
                    label: "Manage Address",
                    onTap: () => context.push("/address"),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
