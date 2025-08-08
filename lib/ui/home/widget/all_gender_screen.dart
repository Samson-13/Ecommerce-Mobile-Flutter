import 'package:flutter/material.dart';

class AllCategoryWidget extends StatelessWidget {
  final List<String> categories = ["All", "Newest", "Popular", "Man", "Woman"];
  final List<String> productImages = [
    "https://i.pinimg.com/736x/ef/62/2c/ef622cc489f83b6eefba054434b426be.jpg",
    "https://i.pinimg.com/736x/a9/a2/31/a9a231ebd6964242770867c21da88632.jpg",
    "https://i.pinimg.com/736x/25/a7/87/25a7874a85fc0e801af4d5bc702d1e42.jpg",
    "https://i.pinimg.com/736x/89/d6/40/89d6405651d6a38e24a3c690b02721aa.jpg",
    "https://i.pinimg.com/736x/23/ed/9a/23ed9afe0bb61fb8fae912456ca5d7dd.jpg",
    "https://i.pinimg.com/736x/a7/15/a4/a715a4d65123e637ed2f4b614770b124.jpg",
  ];

  AllCategoryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Category",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        GridView.count(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          crossAxisCount: 2,
          crossAxisSpacing: 12,
          mainAxisSpacing: 12,
          childAspectRatio: 0.75,
          children:
              productImages.map((url) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(16),
                        child: Image.network(
                          url,
                          fit: BoxFit.cover,
                          width: double.infinity,
                          loadingBuilder: (context, child, loadingProgress) {
                            if (loadingProgress == null) return child;
                            return Container(
                              color: Colors.grey[200],
                              child: const Center(
                                child: CircularProgressIndicator(),
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                    const SizedBox(height: 8),
                    const Text(
                      "Category Name",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                );
              }).toList(),
        ),
      ],
    );
  }
}
