import 'package:ecommerce_mobile/core/router/go_router.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'core/config/config.dart';

void main() {
  F.appFlavor = Flavor.development;
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Ecommerce',
      themeMode: ThemeMode.system,
      routerConfig: router,
    );
  }
}
