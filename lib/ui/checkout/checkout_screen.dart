import 'package:ecommerce_mobile/widgets/button_widget.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

  final double subtotal = 89.98;
  final double shippingFee = 4.99;
  final double total = 94.97;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Checkout"), centerTitle: true),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Shipping Address",
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const Gap(12),
            TextField(
              autofocus: false,

              decoration: InputDecoration(
                hintText: "Enter Address",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              maxLines: 2,
            ),
            Gap(8),
            Text(
              "City",
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const Gap(8),
            TextField(
              autofocus: false,
              decoration: InputDecoration(
                hintText: "Pin Code",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),
            const Gap(8),
            Text(
              "Pin Code",
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const Gap(8),
            TextField(
              autofocus: false,
              decoration: InputDecoration(
                hintText: "Enter Pin Code",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),
            const Gap(24),

            Text(
              "Payment Method",
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const Gap(12),
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: Colors.grey.shade300),
              ),
              child: Row(
                children: const [
                  Icon(Icons.credit_card),
                  Gap(12),
                  Text("Visa **** 1234"),
                  Spacer(),
                  Icon(Icons.arrow_forward_ios, size: 16),
                ],
              ),
            ),
            const Gap(24),

            Text(
              "Order Summary",
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const Gap(12),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Sub-Total"),
                Text("₹${subtotal.toStringAsFixed(2)}"),
              ],
            ),
            const Gap(8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Shipping"),
                Text("₹${shippingFee.toStringAsFixed(2)}"),
              ],
            ),
            const Divider(height: 32),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Total",
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(
                  "₹${total.toStringAsFixed(2)}",
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
            const Gap(24),
            ButtonWidget(
              label: "Place Order",
              onTap: () {
                // Handle order placement
                showDialog(
                  context: context,
                  builder:
                      (_) => AlertDialog(
                        title: Text("Success"),
                        content: Text("Ordered Placed"),
                        actions: [
                          TextButton(
                            onPressed: () => Navigator.pop(context),
                            child: Text("Ok"),
                          ),
                        ],
                      ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
