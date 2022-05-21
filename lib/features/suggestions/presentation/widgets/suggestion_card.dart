import 'package:flutter/material.dart';

import '../../../../core/const/const.dart';
import '../../../../core/utils/utils.dart';

class SuggestionCard extends StatelessWidget {
  final String title;
  final Widget? child;
  final String actionText;
  final VoidCallback onPressed;

  const SuggestionCard({
    Key? key,
    required this.title,
    this.child,
    required this.actionText,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      borderRadius: BorderRadius.circular(4.0),
      child: Ink(
        height: 136.0,
        width: 300.0,
        padding: const EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4.0),
          color: context.theme.colorScheme.surface,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: context.textTheme.headline2,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
            if (child != null)
              SizedBox(
                height: 40.0,
                width: 268.0,
                child: FittedBox(
                  fit: BoxFit.contain,
                  child: child!,
                ),
              ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  actionText,
                  style: context.textTheme.bodyText1,
                  overflow: TextOverflow.ellipsis,
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 5.0, top: 0.5),
                  child: Icon(
                    QyreIcons.chevronRight,
                    size: 10.0,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
