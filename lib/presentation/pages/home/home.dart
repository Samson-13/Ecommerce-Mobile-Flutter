import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'widget/widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
          horizontal: 16.0), // Adjust padding as needed
      child: CustomScrollView(
        physics: const ClampingScrollPhysics(),
        slivers: [
          SliverAppBar(
            pinned: true,
            title: const Text('Home'),
            actions: [
              IconButton(
                onPressed: () {},
                icon: const FaIcon(FontAwesomeIcons.bell),
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
          SliverToBoxAdapter(
              child: CategoryWidget(
            key: key,
          )),
          SliverToBoxAdapter(
              child: FlashSaleWidget(
            key: key,
          ))
        ],
      ),
    );
  }
}
