import 'package:ecommerce_mobile/widgets/button_widget.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

class ProductDetailScreen extends StatefulWidget {
  const ProductDetailScreen({super.key});

  @override
  State<ProductDetailScreen> createState() => _ProductDetailScreenState();
}

class _ProductDetailScreenState extends State<ProductDetailScreen> {
  bool isFavorite = false;
  final List<String> images = [
    "https://i.pinimg.com/736x/65/08/55/650855f9d0a80dfc17ab641524f4c8e5.jpg",
    "https://i.pinimg.com/736x/0f/58/e5/0f58e5c13004602ce22e8b8c4aabd4b0.jpg",
    "https://i.pinimg.com/736x/1d/ed/01/1ded01c200cddaa273354ea3193718b6.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Sam Sun"),
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
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(24),
              child: Image.network(
                "https://i.pinimg.com/736x/65/08/55/650855f9d0a80dfc17ab641524f4c8e5.jpg",
                height: 450,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            const Gap(16),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,

              children: [
                Text(
                  "Karma Des leu",
                  style: const TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Gap(8),
                Text(
                  "₹ 2000",
                  style: const TextStyle(
                    fontSize: 18,
                    color: Colors.green,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const Gap(8),
                const Text(
                  "Description",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                ),
                const Gap(4),
                const Text(
                  "This is a beautiful product made from high-quality materials. "
                  "It's perfect for everyday use or as a gift. "
                  "Durable, stylish, and affordable!",
                  style: TextStyle(fontSize: 14),
                ),
                const Gap(16),
                ButtonWidget(
                  label: "Cart",
                  onTap: () {
                    context.push("/cart");
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
