import 'package:flutter/material.dart';

import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_styles.dart';

class HaveAnAccountWidget extends StatelessWidget {
  const HaveAnAccountWidget(
      {super.key, required this.text1, required this.text2});
  final String text1;
  final String text2;
  @override
  Widget build(BuildContext context) {
    return Align(
      child: Text.rich(
        TextSpan(
          children: [
            TextSpan(text: text1, style: AppStyles.s12),
            TextSpan(
                text: text2,
                style: AppStyles.s12.copyWith(color: AppColors.grey)),
          ],
        ),
      ),
    );
  }
}
