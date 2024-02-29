import 'package:cached_network_image/cached_network_image.dart';
import 'package:dalel/features/home/prsentation/widgets/historical_periodos.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

import '../../../../core/utils/app_assets.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_styles.dart';
import '../../data/models/historical_periods_model.dart';

class HistoricalPeriodsItem extends StatelessWidget {
  const HistoricalPeriodsItem(
      {super.key, required this.historicalPeriodsModel});
  final HistoricalPeriodsModel historicalPeriodsModel;
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
              historicalPeriodsModel.name,
              style: AppStyles.s16.copyWith(color: AppColors.deepBrown),
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(width: 6),
          Container(
            height: 100,
            width: 60,
            child: CachedNetworkImage(
              imageUrl: historicalPeriodsModel.image,
              errorWidget: (context, url, error) => const Icon(Icons.error),
              placeholder: (context, url) => Shimmer.fromColors(
                baseColor: AppColors.grey,
                highlightColor: Colors.white,
                child: Container(
                  width: 47,
                  height: 64,
                  color: AppColors.grey,
                ),
              ),
            ),
          ),
          const SizedBox(width: 16)
        ],
      ),
    );
  }
}
