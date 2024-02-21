import 'dart:ffi';

import 'package:dalel/core/utils/app_styles.dart';
import 'package:dalel/features/on_boarding/data/models/on_boarding_model.dart';
import 'package:flutter/material.dart';

import '../../../../core/utils/app_assets.dart';
import 'custom_smooth_page_indicator.dart';

class OnBoardingBody extends StatelessWidget {
  OnBoardingBody({super.key});
  final PageController _controller = PageController();
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .78,
      child: PageView.builder(
        physics: const BouncingScrollPhysics(),
        controller: _controller,
        itemCount: onBoardingData.length,
        itemBuilder: (BuildContext context, int index) {
          return Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height * .4,
                width: MediaQuery.of(context).size.height * .5,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                        onBoardingData[index].imagPath,
                      ),
                      fit: BoxFit.fill),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              CustomSmoothPageIndecator(controller: _controller),
              SizedBox(
                height: MediaQuery.of(context).size.height * .1,
              ),
              Text(
                onBoardingData[index].title,
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
                style: AppStyles.s24.copyWith(fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * .05,
              ),
              Text(
                onBoardingData[index].subTitle,
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
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
