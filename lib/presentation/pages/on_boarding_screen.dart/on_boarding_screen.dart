import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: ListView(
                    children: const [
                      Image(
                          image: NetworkImage(
                              'https://i.pinimg.com/736x/99/65/25/9965255b5606bd6623f716272244e0be.jpg')),
                      Image(
                          image: NetworkImage(
                              'https://i.pinimg.com/736x/b2/39/38/b23938911980848ff8a0863d76adc18d.jpg')),
                      Image(
                          image: NetworkImage(
                              'https://i.pinimg.com/736x/69/db/57/69db57560a09d039998a379acceac5f0.jpg')),
                      Image(
                          image: NetworkImage(
                              'https://i.pinimg.com/736x/35/e1/31/35e131ca9f07a09794e6d91c20a94ec2.jpg')),
                    ],
                  ),
                ),
              ],
            ),
          ),

          // Positioned Button at Bottom Center
          Positioned(
            bottom: 60,
            left: 20,
            right: 20,
            child: ElevatedButton(
              onPressed: () {
                context.go('/login');
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
                padding:
                    const EdgeInsets.symmetric(horizontal: 40, vertical: 12),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: const Text("Get Started",
                  style: TextStyle(fontSize: 18, color: Colors.white)),
            ),
          ),
        ],
      ),
    );
  }
}
