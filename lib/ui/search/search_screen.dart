import 'package:ecommerce_mobile/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final TextEditingController _searchController = TextEditingController();
  final List<String> productImages = [
    "https://i.pinimg.com/736x/67/3c/1c/673c1cd85edee4be863056dac84e6903.jpg",
    "https://i.pinimg.com/736x/a1/4b/a3/a14ba3bc45a118a104bc0947d1e5b0bd.jpg",
    "https://i.pinimg.com/736x/61/fd/43/61fd4314ab392414b12e71a22b4ae1ea.jpg",
    "https://i.pinimg.com/736x/82/6c/ad/826cad162825996f8b9768a43a158c66.jpg",
  ];
  final List<String> productNames = [
    "Denim Jacket",
    "Classic Hoodie",
    "Summer Dress",
    "Linen Shirt",
  ];

  List<int> filteredIndexes = [];

  @override
  void initState() {
    super.initState();
    filteredIndexes = List.generate(productImages.length, (index) => index);
  }

  void _onSearch(String query) {
    setState(() {
      filteredIndexes =
          List.generate(productNames.length, (index) => index)
              .where(
                (index) => productNames[index].toLowerCase().contains(
                  query.toLowerCase(),
                ),
              )
              .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(context.l10n.brand_name)),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(25),
                border: Border.all(
                  color: Colors.grey, // Customize your border color here
                  width: 1.2, // Optional: thickness of the border
                ),
              ),
              child: TextField(
                autofocus: false,

                controller: _searchController,
                onChanged: _onSearch,
                decoration: InputDecoration(
                  hintText: context.l10n.search,
                  prefixIcon: Icon(Icons.search),
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 14,
                  ),
                ),
              ),
            ),
            const Gap(20),
            Expanded(
              child:
                  filteredIndexes.isEmpty
                      ? Center(child: Text(context.l10n.no_result_found))
                      : GridView.builder(
                        itemCount: filteredIndexes.length,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              mainAxisSpacing: 12,
                              crossAxisSpacing: 12,
                              childAspectRatio: 0.75,
                            ),
                        itemBuilder: (context, i) {
                          final index = filteredIndexes[i];
                          return Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(12),
                                  child: Image.network(
                                    productImages[index],
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
                          );
                        },
                      ),
            ),
          ],
        ),
      ),
    );
  }
}
