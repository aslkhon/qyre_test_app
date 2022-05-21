import 'package:flutter/material.dart';

import '../../../../core/utils/utils.dart';

class ProfileCompletenessBar extends StatelessWidget {
  final double completeness;

  const ProfileCompletenessBar({Key? key, required this.completeness})
      : assert(completeness >= 0 && completeness <= 1.0,
            'Completeness has to be in boundaries of [0, 1]'),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    const width = 268.0;

    return Container(
      height: 9.0,
      width: width,
      color: context.theme.colorScheme.background,
      alignment: Alignment.centerLeft,
      child: Container(
        height: 9.0,
        width: width * completeness,
        color: context.theme.colorScheme.primary,
      ),
    );
  }
}
