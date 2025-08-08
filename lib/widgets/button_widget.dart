import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ButtonWidget extends ConsumerWidget {
  final VoidCallback? onTap;
  final String label;

  const ButtonWidget({super.key, required this.onTap, required this.label});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SizedBox(
      width: double.infinity,
      height: 60,
      child: Material(
        color:
            Theme.of(context).brightness == Brightness.dark
                ? Colors.white
                : Colors.black,
        borderRadius: BorderRadius.circular(25),
        child: InkWell(
          onTap: onTap,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 12),
            child: Center(
              child: Text(
                label,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color:
                      Theme.of(context).brightness == Brightness.dark
                          ? Colors.black
                          : Colors.white,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
