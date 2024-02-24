import 'package:dalel/core/utils/media_query.dart';
import 'package:flutter/material.dart';

class SignInView extends StatelessWidget {
  const SignInView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: context.getHeightPercentage(30),
      ),
    );
  }
}
