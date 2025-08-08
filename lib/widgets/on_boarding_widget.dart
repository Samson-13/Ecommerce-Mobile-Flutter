import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class OnboardingStep extends StatelessWidget {
  final String image;
  final String title;
  final String description;

  const OnboardingStep({
    super.key,
    required this.image,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.network(image, height: 200),
        const SizedBox(height: 10),
        Text(
          title,
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 5),
        Text(
          description,
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 16, color: Colors.grey[700]),
        ),
        const Gap(20),
      ],
    );
  }
}
