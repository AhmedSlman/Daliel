import 'package:flutter/material.dart';

import '../../../../core/utils/app_assets.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_styles.dart';

class HistoricalPeriodsItem extends StatelessWidget {
  const HistoricalPeriodsItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 96,
      width: 160,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5),
        boxShadow: [
          BoxShadow(
              color: AppColors.grey,
              blurRadius: 10,
              offset: const Offset(0, 5)),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const SizedBox(width: 16),
          SizedBox(
            height: 48,
            width: 62,
            child: Text(
              "Ancient Egypt",
              style: AppStyles.s16.copyWith(color: AppColors.deepBrown),
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
              textAlign: TextAlign.center,
            ),
          ),
          Container(
            height: 64,
            width: 46,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(AppAssets.imagesFrame),
              ),
            ),
          ),
          const SizedBox(width: 16)
        ],
      ),
    );
  }
}
