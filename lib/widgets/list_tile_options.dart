import 'package:flutter/material.dart';

Widget buildListTileOption({
  required IconData icon,
  required String label,
  final VoidCallback? onTap,
  Color? color,
}) {
  return ListTile(
    leading: Icon(icon, color: color ?? Colors.black),
    title: Text(
      label,
      style: TextStyle(fontSize: 16, color: color ?? Colors.black),
    ),
    trailing: const Icon(Icons.arrow_forward_ios, size: 16),
    onTap: onTap,
  );
}
