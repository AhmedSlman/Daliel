import 'package:dalel/core/utils/app_colors.dart';
import 'package:dalel/core/utils/app_styles.dart';
import 'package:dalel/core/widgets/custom_botton.dart';
import 'package:flutter/material.dart';

import '../../../../core/utils/app_strings.dart';
import '../widgets/on_boarding_body.dart';
import '../widgets/skip_botton.dart';

class OnBoardingView extends StatelessWidget {
  const OnBoardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: ListView(
            physics: const BouncingScrollPhysics(),
            children: [
              const SkipButton(),
              OnBoardingBody(),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.01,
              ),
              const Center(
                child: Padding(
                  padding: EdgeInsets.only(bottom: 20),
                  child: CustomBotton(
                    text: AppStrings.next,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
