import 'package:dalel/features/on_boarding/presentation/functions/on_boarding.dart';
import 'package:flutter/material.dart';

import '../../../../core/utils/app_functions.dart';
import '../../../../core/utils/app_strings.dart';
import '../../../../core/utils/app_styles.dart';
import '../../../../core/widgets/custom_botton.dart';
import '../../data/models/on_boarding_model.dart';

class GetButtons extends StatelessWidget {
  const GetButtons(
      {super.key, required this.currentIndex, required this.controller});
  final int currentIndex;
  final PageController controller;

  @override
  Widget build(BuildContext context) {
    if (currentIndex == onBoardingData.length - 1) {
      return Column(
        children: [
          CustomBotton(
            text: AppStrings.createAccount,
            onPressed: () {
              onBoardingVisited();
              customReplacementNavigate(context, "/signUp");
            },
          ),
          const SizedBox(
            height: 16,
          ),
          GestureDetector(
            onTap: () {
              onBoardingVisited();
              customReplacementNavigate(context, "/signIn");
            },
            child: Text(
              "Login Now",
              style: AppStyles.s16.copyWith(fontWeight: FontWeight.w400),
            ),
          )
        ],
      );
    } else {
      return Center(
        child: Padding(
          padding: const EdgeInsets.only(bottom: 20),
          child: CustomBotton(
            text: AppStrings.next,
            onPressed: () {
              controller.nextPage(
                duration: const Duration(microseconds: 200),
                curve: Curves.bounceIn,
              );
            },
          ),
        ),
      );
    }
  }
}