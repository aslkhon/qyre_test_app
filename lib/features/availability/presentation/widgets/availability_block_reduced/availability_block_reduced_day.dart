import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:qyre_test_app/features/availability/presentation/widgets/availability_indicator.dart';

import '../../../../../core/utils/utils.dart';
import '../../../../../app/presentation/theme/palette.dart';

class AvailabilityBlockReducedDay extends StatelessWidget {
  final DateTime dateTime;
  final bool? isAvailable;

  const AvailabilityBlockReducedDay({
    Key? key,
    required this.dateTime,
    this.isAvailable,
  }) : super(key: key);

  Row _firstRow(BuildContext context, TextStyle? textStyle) {
    return Row(
      children: [
        if (dateTime.isToday) ...[
          Text(
            'TODAY',
            style: context.textTheme.headline1?.copyWith(
              color: Palette.gray,
              fontSize: 10.0,
            ),
          ),
          const SizedBox(
            width: 2.0,
          )
        ],
        Text(
          DateFormat.EEEE().format(dateTime).substring(0, 3),
          style: textStyle,
        ),
      ],
    );
  }

  Row _secondRow(BuildContext context, TextStyle? textStyle) {
    late final Widget? availabilityIndicator;

    if (isAvailable == null) {
      availabilityIndicator = null;
    } else {
      availabilityIndicator = AvailabilityIndicator(isAvailable: isAvailable);
    }

    return Row(
      children: [
        if (availabilityIndicator != null) availabilityIndicator,
        Text(
          DateFormat('d MMM.').format(dateTime),
          style: textStyle,
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    final textStyle = context.textTheme.headline5;

    return Container(
      height: 36.0,
      padding: const EdgeInsets.symmetric(horizontal: 11.0),
      decoration: BoxDecoration(
        color: context.theme.colorScheme.onBackground,
        borderRadius: BorderRadius.circular(4.0),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _firstRow(context, textStyle),
          _secondRow(context, textStyle),
        ],
      ),
    );
  }
}
