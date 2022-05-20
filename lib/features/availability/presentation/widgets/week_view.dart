import 'package:flutter/material.dart';

import '../../domain/domain.dart';
import 'availability_block_reduced/availability_block_reduced_day.dart';
import 'availability_block_visible/availability_bloc_visible_day.dart';

enum WeekViewType {
  visible,
  reduced,
}

class WeekView extends StatelessWidget {
  final List<Day> week;
  final WeekViewType type;

  const WeekView.visible({
    Key? key,
    required this.week,
  })  : type = WeekViewType.visible,
        super(key: key);

  const WeekView.reduced({
    Key? key,
    required this.week,
  })  : type = WeekViewType.reduced,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 16.0),
        child: Wrap(
          crossAxisAlignment: WrapCrossAlignment.center,
          spacing: 8.0,
          children: [
            for (var day in week)
              type == WeekViewType.visible
                  ? AvailabilityBlockVisibleDay(
                      dateTime: day.dateTime,
                      isAvailable: day.isAvailable,
                    )
                  : AvailabilityBlockReducedDay(
                      dateTime: day.dateTime,
                      isAvailable: day.isAvailable,
                    ),
          ],
        ),
      ),
    );
  }
}
