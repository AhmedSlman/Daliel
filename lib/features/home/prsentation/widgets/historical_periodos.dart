import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dalel/core/functions/custom_toast.dart';
import 'package:dalel/core/utils/app_strings.dart';
import 'package:dalel/features/home/data/models/historical_periods_model.dart';
import 'package:dalel/features/home/prsentation/cubit/home_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/widgets/custom_shimmer_category.dart';
import 'historical_preiods_item.dart';

class HistoricalPeridos extends StatelessWidget {
  const HistoricalPeridos({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeCubit, HomeState>(
      listener: (context, state) {
        if (state is GetHistoricalPeriodFailure) {
          showToast(state.errMessage);
        }
      },
      builder: (context, state) {
        return state is GetHistoricalPeriodLoading
            ? const CustomShimmerCategory()
            : SizedBox(
                height: 100,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemCount: context.read<HomeCubit>().historicalPeriods.length,
                  itemBuilder: (context, Index) {
                    return HistoricalPeriodsItem(
                      historicalPeriodsModel:
                          context.read<HomeCubit>().historicalPeriods[Index],
                    );
                  },
                  separatorBuilder: (BuildContext context, int index) {
                    return const SizedBox(
                      width: 20,
                    );
                  },
                ),
              );
      },
    );
  }
}
