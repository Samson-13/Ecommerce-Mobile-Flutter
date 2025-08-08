import 'dart:developer';

import 'package:ecommerce_mobile/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'widget/widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        physics: const ClampingScrollPhysics(),
        slivers: [
          SliverAppBar(
            pinned: true,
            title: Text(context.l10n.brand_name),
            actions: [
              IconButton(
                onPressed: () {
                  FocusScope.of(context).unfocus();
                  context.push("/cart");
                },
                icon: const Icon(Icons.shopping_bag_outlined),
              ),
            ],
          ),
          SliverToBoxAdapter(
            child: BannerWidget(
              title: "New Collection",
              subtitle: "Check out our newest collection.",
              buttonText: "Explore",
              onPressed: () {
                log("Button Pressed!");
              },
              imageUrl:
                  'https://i.pinimg.com/736x/1b/ac/fe/1bacfe4a2ba7a6946ef95dc0bfff802d.jpg',
            ),
          ),
          SliverToBoxAdapter(child: CategoryWidget(key: key)),
          // SliverToBoxAdapter(child: Gap(16)),
          SliverToBoxAdapter(child: WeatherWidgets(key: key)),
        ],
      ),
    );
  }
}
