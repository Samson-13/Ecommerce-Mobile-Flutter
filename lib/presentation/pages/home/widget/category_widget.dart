import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gap/gap.dart';

class CategoryWidget extends StatelessWidget {
  final List<Map<String, dynamic>> categories = [
    {"icon": FontAwesomeIcons.steam, "label": "Steam"},
    {"icon": FontAwesomeIcons.ticket, "label": "Ticket"},
    {"icon": FontAwesomeIcons.radiation, "label": "Radiation"},
    {"icon": FontAwesomeIcons.biohazard, "label": "Bio"},
    {"icon": FontAwesomeIcons.gamepad, "label": "Game"},
  ];

  CategoryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Category",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  "See all",
                  style: TextStyle(
                      fontSize: 14,
                      color: Theme.of(context).colorScheme.primary),
                ),
              )
            ],
          ),
        ),
        const Gap(10),
        SizedBox(
          height: 90,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: categories.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      height: 55,
                      width: 55,
                      decoration: BoxDecoration(
                        color: Colors.brown.shade100,
                        shape: BoxShape.circle,
                      ),
                      child: Icon(
                        categories[index]["icon"],
                        color: Colors.brown,
                        size: 30,
                      ),
                    ),
                    const Gap(5),
                    Text(
                      categories[index]["label"],
                      style: const TextStyle(fontSize: 14),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
