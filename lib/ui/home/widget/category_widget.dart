import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

class CategoryWidget extends StatelessWidget {
  final List<String> productImages = [
    "https://i.pinimg.com/736x/ef/62/2c/ef622cc489f83b6eefba054434b426be.jpg",
    "https://i.pinimg.com/736x/a9/a2/31/a9a231ebd6964242770867c21da88632.jpg",
    "https://i.pinimg.com/736x/25/a7/87/25a7874a85fc0e801af4d5bc702d1e42.jpg",
    "https://i.pinimg.com/736x/23/ed/9a/23ed9afe0bb61fb8fae912456ca5d7dd.jpg",
    "https://i.pinimg.com/736x/a7/15/a4/a715a4d65123e637ed2f4b614770b124.jpg",
  ];

  final List<String> labels = [
    "Shoes",
    "Bags",
    "T-shirt",
    "Hoodies",
    "Bottomwear",
  ];

  CategoryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Header
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                "Category",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        const Gap(10),

        // Horizontal List
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: SizedBox(
            height: 90,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: productImages.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      // Image inside circle
                      GestureDetector(
                        onTap: () {
                          context.push('/allProducts');
                        },
                        child: Container(
                          height: 60,
                          width: 60,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                          ),
                          clipBehavior: Clip.antiAlias,
                          child: Image.network(
                            productImages[index],
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const Gap(5),
                      Text(labels[index], style: const TextStyle(fontSize: 14)),
                    ],
                  ),
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}
