import 'package:flutter/material.dart';

import '../../../../core/utils/app_assets.dart';

class ForgotPasswordImage extends StatelessWidget {
  const ForgotPasswordImage({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 235,
      width: 235,
      child: Image.asset(AppAssets.imagesForgotPassword),
    );
  }
}
