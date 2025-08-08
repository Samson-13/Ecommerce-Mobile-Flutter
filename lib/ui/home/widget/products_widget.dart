import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

class FlashSaleWidget extends StatelessWidget {
  final List<String> categories = ["All", "Newest", "Popular", "Man", "Woman"];
  final List<String> productImages = [
    "https://i.pinimg.com/736x/85/7b/7f/857b7f4ecc1c7a88b917d850bbdeb974.jpg",
    "https://i.pinimg.com/736x/d9/b2/97/d9b29715b473dd0a5b37e1bc9929907b.jpg",
    "https://i.pinimg.com/736x/6f/9a/69/6f9a6941c50dc528280a6c8e996c540e.jpg",
    "https://i.pinimg.com/736x/3a/2a/4e/3a2a4e8ca81112ad39f62a470a381705.jpg",
  ];

  FlashSaleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Flash Sale Title & See All
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              "Cloveis",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            TextButton(
              onPressed: () {
                context.push('/allProducts');
              },
              child: Text(
                "See all",
                style: TextStyle(
                  fontSize: 14,
                  color: Theme.of(context).colorScheme.primary,
                ),
              ),
            ),
          ],
        ),
        const Gap(10),
        // Product List (vertical)
        SizedBox(
          height: 420, // Adjust height based on item size and count
          child: ListView.builder(
            itemCount: productImages.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: Image.network(
                    productImages[index],
                    height: 200,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
