import 'package:dalel/core/functions/custom_navigate.dart';
import 'package:flutter/material.dart';

import '../../../../core/utils/app_strings.dart';
import '../../../../core/utils/app_styles.dart';

class ForgetPassWordTextWidget extends StatelessWidget {
  const ForgetPassWordTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        customReplacementNavigate(context, "path");
      },
      child: Align(
        alignment: Alignment.centerRight,
        child: Text(
          AppStrings.forgotPassword,
          style: AppStyles.s12,
        ),
      ),
    );
  }
}
