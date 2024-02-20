import 'package:draya/core/routes/app_router.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Daliel());
}

class Daliel extends StatelessWidget {
  const Daliel({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: router,
    );
  }
}
