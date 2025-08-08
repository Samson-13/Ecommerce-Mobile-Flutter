import 'package:ecommerce_mobile/widgets/search_bar_widget.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

class AllProductScreen extends StatefulWidget {
  const AllProductScreen({super.key});

  @override
  State<AllProductScreen> createState() => _AllProductScreenState();
}

class _AllProductScreenState extends State<AllProductScreen> {
  final List<String> productImages = [
    "https://i.pinimg.com/736x/0f/58/e5/0f58e5c13004602ce22e8b8c4aabd4b0.jpg",
    "https://i.pinimg.com/736x/1d/ed/01/1ded01c200cddaa273354ea3193718b6.jpg",
    "https://i.pinimg.com/736x/98/60/12/986012d23f227afee8a86580c7206197.jpg",
    "https://i.pinimg.com/736x/e1/84/4c/e1844c18f1d25378f548a0e79c6f1740.jpg",
    "https://i.pinimg.com/736x/35/0a/c4/350ac441eccf0c8e471842412edead52.jpg",
  ];

  // Track favorite status for each product
  final Set<int> _favorites = {};
  final TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Cloveis",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
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
      body: Padding(
        padding: const EdgeInsets.only(left: 16.0, right: 16.0, bottom: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomSearchBar(
              controller: _searchController,
              hintText: "Search..",
            ),
            const Gap(12),
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 12,
                mainAxisSpacing: 12,
                childAspectRatio: 0.47,
                children: List.generate(productImages.length, (index) {
                  final url = productImages[index];
                  final isFavorite = _favorites.contains(index);

                  return GestureDetector(
                    onTap: () {
                      context.push("/productDetail");
                    },
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Stack(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(16),
                                child: Image.network(
                                  url,
                                  fit: BoxFit.cover,
                                  width: double.infinity,
                                  loadingBuilder: (
                                    context,
                                    child,
                                    loadingProgress,
                                  ) {
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
                              Positioned(
                                top: 8,
                                right: 8,
                                child: GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      if (isFavorite) {
                                        _favorites.remove(index);
                                      } else {
                                        _favorites.add(index);
                                      }
                                    });
                                  },
                                  behavior:
                                      HitTestBehavior
                                          .opaque, // ensures this blocks the tap

                                  child: Icon(
                                    isFavorite
                                        ? Icons.favorite
                                        : Icons.favorite_border,
                                    color:
                                        isFavorite ? Colors.red : Colors.black,
                                    size: 20,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const Gap(8),
                        const Text(
                          "Product Name",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const Text(
                          "Rs. 2000",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  );
                }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
