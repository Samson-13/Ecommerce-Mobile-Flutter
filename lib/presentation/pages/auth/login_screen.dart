import 'package:ecommerce_mobile/presentation/widgets/button_widget.dart';
import 'package:ecommerce_mobile/presentation/widgets/email_widget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class LoginScreen extends StatefulHookConsumerWidget {
  const LoginScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _LoginScreenState();
}

class _LoginScreenState extends ConsumerState<LoginScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Gap(50),
              const Center(
                child: CircleAvatar(
                  radius: 80,
                  backgroundImage: NetworkImage(
                    'https://i.pinimg.com/736x/00/61/60/006160e2c1859ae3efa01b63b47b45ae.jpg',
                  ),
                ),
              ),
              const Gap(20),
              const Text(
                "Login to Continue",
                style: TextStyle(fontSize: 24, color: Colors.grey),
              ),
              const Gap(8),
              buildTextField(context, 'Email', controller: _emailController),
              const Gap(8),
              buildTextField(
                context,
                'Password',
                controller: _passwordController,
              ),
              const Gap(20),
              ButtonWidget(
                onTap: () {
                  context.go('/navbar');
                },
                label: 'Login',
              ),
              const Gap(10),
              Center(
                child: TextButton(
                  onPressed: () {
                    // Handle forgot password action
                  },
                  child: const Text("Forgot Password?"),
                ),
              ),
              const Gap(40),
              const Center(child: Text('- Or sign in with')),
              const Gap(8),
              Row(
                mainAxisAlignment:
                    MainAxisAlignment.center, // Center align buttons
                children: [
                  // Google Sign-In Button
                  IconButton(
                    onPressed: () {},
                    icon: const FaIcon(FontAwesomeIcons.google),
                    color: Colors.black,
                  ),
                  const SizedBox(width: 20), // Spacing between buttons
                  // Apple Sign-In Button
                  IconButton(
                    onPressed: () {},
                    icon: const FaIcon(FontAwesomeIcons.apple),
                    color: Colors.black,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
