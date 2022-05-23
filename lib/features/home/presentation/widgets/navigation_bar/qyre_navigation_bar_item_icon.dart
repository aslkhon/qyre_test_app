import 'package:flutter/material.dart';

import '../../../../../core/utils/utils.dart';

class QyreNavigationBarItemIcon extends StatelessWidget {
  final int? notificationsCount;
  final IconData icon;

  const QyreNavigationBarItemIcon({
    super.key,
    required this.icon,
    this.notificationsCount,
  });

  Positioned _badge(BuildContext context) {
    return Positioned(
      top: 0,
      right: 0,
      child: Container(
        height: 16.0,
        width: 16.0,
        decoration: BoxDecoration(
          color: context.theme.colorScheme.secondary,
          borderRadius: BorderRadius.circular(8.0),
        ),
        alignment: Alignment.center,
        child: Text(
          '2',
          style: context.textTheme.headline5?.copyWith(height: 0.8),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Icon(icon),
        ),
        if (notificationsCount != null) _badge(context)
      ],
    );
  }
}
