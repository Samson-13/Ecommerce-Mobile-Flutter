import 'package:ecommerce_mobile/ui/home/widget/weather_banners.dart';
import 'package:ecommerce_mobile/widgets/search_bar_widget.dart';
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
      appBar: AppBar(
        title: const Text("Sam Sun"),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12),
        child: Column(
          children: [
            // Search Bar
            CustomSearchBar(
              controller: _searchController,
              hintText: "Search...",
            ),
            const Gap(20),

            // Products or Empty State
            Expanded(
              child:
                  filteredIndexes.isEmpty
                      ? const Center(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(
                              Icons.search_off,
                              size: 50,
                              color: Colors.grey,
                            ),
                            Gap(10),
                            Text(
                              "No products found",
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.black54,
                              ),
                            ),
                          ],
                        ),
                      )
                      : WeatherWidgets(),
            ),
          ],
        ),
      ),
      backgroundColor: Colors.grey[50],
    );
  }
}
