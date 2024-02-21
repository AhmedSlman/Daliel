import 'package:flutter/material.dart';

import '../../../../core/utils/app_functions.dart';
import '../../../../core/utils/app_strings.dart';
import '../../../../core/utils/app_styles.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    delayedNavigate(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          AppStrings.appName,
          style: AppStyles.s64,
        ),
      ),
    );
  }
}

void delayedNavigate(BuildContext context) {
  Future.delayed(const Duration(seconds: 2), () {
    customReplacementNavigate(context, "/onBoarding");
  });
}
