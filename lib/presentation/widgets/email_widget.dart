// custom_text_fields.dart
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

Widget buildTextField(
  BuildContext context,
  String label, {
  TextEditingController? controller,
  String? hintText,
}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        label,
        style: TextStyle(
          color: Theme.of(context).colorScheme.onSurface,
          // fontFamily: FontFamily.sFProDisplay,
          fontWeight: FontWeight.w400,
        ),
      ),
      const Gap(8),
      TextFormField(
        controller: controller,
        keyboardType: TextInputType.emailAddress,
        style: TextStyle(
          // fontFamily: FontFamily.sFProDisplay,
          fontWeight: FontWeight.w400,
          color: Theme.of(context).colorScheme.onSurface,
        ),
        decoration: InputDecoration(
          filled: true,
          fillColor: Theme.of(context).colorScheme.surface,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.0),
            borderSide: BorderSide(
              color: Theme.of(
                context,
              ).colorScheme.onSurface.withValues(alpha: 0.5),
              width: 1.5,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.0),
            borderSide: BorderSide(
              color: Theme.of(context).colorScheme.primary,
              width: 2.0,
            ),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.0),
            borderSide: const BorderSide(color: Colors.red, width: 1.5),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.0),
            borderSide: const BorderSide(color: Colors.redAccent, width: 2.0),
          ),
          hintText: hintText,
          hintStyle: TextStyle(
            // fontFamily: FontFamily.sFProDisplay,
            fontWeight: FontWeight.w400,
            color: Theme.of(context).colorScheme.surfaceTint,
          ),
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 8,
            vertical: 12,
          ),
        ),
      ),
    ],
  );
}
