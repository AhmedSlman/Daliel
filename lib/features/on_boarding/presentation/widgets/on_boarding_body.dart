import 'package:dalel/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

import '../../../../core/utils/app_assets.dart';
import 'custom_smooth_page_indicator.dart';

class OnBoardingBody extends StatelessWidget {
  OnBoardingBody({super.key});
  final PageController _controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: PageView.builder(
        controller: _controller,
        itemCount: 3,
        itemBuilder: (BuildContext context, int index) {
          return Column(
            children: [
              Image.asset(AppAssets.imagesOnBoarding1),
              const SizedBox(
                height: 20,
              ),
              CustomSmoothPageIndecator(controller: _controller),
              SizedBox(
                height: MediaQuery.of(context).size.height * .1,
              ),
              Text(
                "Explore The History With Dalel In A Smart Way",
                style: AppStyles.s24.copyWith(fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * .05,
              ),
              const Text(
                "Using our app history libraries you can find many historcal periods",
                style: AppStyles.s16,
                textAlign: TextAlign.center,
              ),
            ],
          );
        },
      ),
    );
  }
}
