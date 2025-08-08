import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class WishlistScreen extends StatefulWidget {
  const WishlistScreen({super.key});

  @override
  State<WishlistScreen> createState() => _WishlistScreenState();
}

class _WishlistScreenState extends State<WishlistScreen> {
  final List<String> wishlistImages = [
    "https://i.pinimg.com/736x/9f/0c/e1/9f0ce1b87bcb3989d3987ef78fdf3c53.jpg",
    "https://i.pinimg.com/736x/29/0a/ad/290aad579b0d8bed681455bdfd1974c4.jpg",
  ];
  final List<String> productNames = ["Floral Dress", "Streetwear Jacket"];

  void _removeFromWishlist(int index) {
    setState(() {
      wishlistImages.removeAt(index);
      productNames.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Wishlist")),
      body:
          wishlistImages.isEmpty
              ? const Center(child: Text("Your wishlist is empty."))
              : Padding(
                padding: const EdgeInsets.all(16.0),
                child: GridView.builder(
                  itemCount: wishlistImages.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 12,
                    crossAxisSpacing: 12,
                    childAspectRatio: 0.75,
                  ),
                  itemBuilder: (context, index) {
                    return Stack(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(16),
                                child: Image.network(
                                  wishlistImages[index],
                                  fit: BoxFit.cover,
                                  width: double.infinity,
                                ),
                              ),
                            ),
                            const Gap(8),
                            Text(
                              productNames[index],
                              style: const TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                        Positioned(
                          top: 4,
                          right: 4,
                          child: IconButton(
                            icon: const Icon(Icons.favorite, color: Colors.red),
                            onPressed: () => _removeFromWishlist(index),
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ),
    );
  }
}
