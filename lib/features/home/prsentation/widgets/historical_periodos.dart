import 'package:flutter/material.dart';

import 'historical_preiods_item.dart';

class HistoricalPeridos extends StatelessWidget {
  const HistoricalPeridos({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        HistoricalPeriodsItem(),
        HistoricalPeriodsItem(),
      ],
    );
  }
}
