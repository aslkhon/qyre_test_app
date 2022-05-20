import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../../../../core/utils/utils.dart';
import '../../../../../app/presentation/theme/palette.dart';
import '../availability_indicator.dart';

class AvailabilityBlockVisibleDay extends StatelessWidget {
  final DateTime dateTime;
  final bool? isAvailable;

  const AvailabilityBlockVisibleDay({
    Key? key,
    required this.dateTime,
    this.isAvailable,
  }) : super(key: key);

  Padding _todayText(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 4.0),
      child: Text(
        'TODAY',
        style: context.textTheme.headline1?.copyWith(
          color: Palette.gray,
          fontSize: 10.0,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    late final Widget? availabilityIndicator;

    if (isAvailable == null) {
      availabilityIndicator = null;
    } else {
      availabilityIndicator = AvailabilityIndicator(isAvailable: isAvailable);
    }

    return Container(
      width: 62.0,
      padding: const EdgeInsets.symmetric(vertical: 15.0),
      decoration: BoxDecoration(
        color: context.theme.colorScheme.onBackground,
        borderRadius: BorderRadius.circular(4.0),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (dateTime.isToday) ...[
            _todayText(context),
          ],
          Text(
            DateFormat.EEEE().format(dateTime).substring(0, 3),
            style: context.textTheme.headline1?.copyWith(
              fontSize: 12.0,
              color: Palette.white,
            ),
          ),
          const SizedBox(
            height: 2.0,
          ),
          Text(
            DateFormat('MMM').format(dateTime),
            style: context.textTheme.bodyText1?.copyWith(
              color: Palette.white,
              fontSize: 10.0,
            ),
          ),
          const SizedBox(
            height: 2.0,
          ),
          Text(
            DateFormat('d').format(dateTime),
            style: context.textTheme.headline2?.copyWith(
              color: Palette.white,
            ),
          ),
          if (availabilityIndicator != null) ...[
            const SizedBox(
              height: 8.0,
            ),
            availabilityIndicator,
          ],
        ],
      ),
    );
  }
}
