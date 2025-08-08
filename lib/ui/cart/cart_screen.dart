import 'package:ecommerce_mobile/widgets/button_widget.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

class CartScreen extends StatelessWidget {
  final List<String> cartImages = [
    "https://i.pinimg.com/736x/67/3c/1c/673c1cd85edee4be863056dac84e6903.jpg",
    "https://i.pinimg.com/736x/a1/4b/a3/a14ba3bc45a118a104bc0947d1e5b0bd.jpg",
  ];

  final List<String> productNames = ["Denim Jacket", "Classic Hoodie"];

  final List<double> prices = [49.99, 39.99];

  CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Cart"), centerTitle: true),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Expanded(
              child: ListView.separated(
                itemCount: cartImages.length,
                separatorBuilder: (context, index) => const Gap(16),
                itemBuilder: (context, index) {
                  return Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: Image.network(
                          cartImages[index],
                          width: 80,
                          height: 100,
                          fit: BoxFit.cover,
                        ),
                      ),
                      const Gap(12),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              productNames[index],
                              style: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            const Gap(8),
                            Text(
                              "\$${prices[index].toStringAsFixed(2)}",
                              style: const TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Gap(8),
                      IconButton(
                        icon: const Icon(Icons.delete_outline),
                        onPressed: () {
                          // Handle item removal
                        },
                      ),
                    ],
                  );
                },
              ),
            ),
            const Gap(16),
            ButtonWidget(
              label: "Checkout",
              onTap: () {
                context.push("/checkout");
              },
            ),
            Gap(8),
          ],
        ),
      ),
    );
  }
}
