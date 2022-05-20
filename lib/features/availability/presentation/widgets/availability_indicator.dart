import 'package:flutter/material.dart';

import '../../../../core/utils/utils.dart';

class AvailabilityIndicator extends StatelessWidget {
  const AvailabilityIndicator({
    Key? key,
    required this.isAvailable,
  }) : super(key: key);

  final bool? isAvailable;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 8.0,
      width: 8.0,
      margin: const EdgeInsets.only(right: 2.0, top: 1.0),
      decoration: BoxDecoration(
        color: isAvailable!
            ? context.theme.colorScheme.primary
            : context.theme.colorScheme.secondary,
        borderRadius: BorderRadius.circular(4.0),
      ),
    );
  }
}
