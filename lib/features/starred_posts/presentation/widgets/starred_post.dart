import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../app/presentation/theme/palette.dart';
import '../../../../core/const/const.dart';
import '../../../../core/utils/utils.dart';

class StarredPost extends StatelessWidget {
  final String title;
  final String subtitle;
  final String body;
  final DateTime dateTime;
  final VoidCallback onPressed;

  const StarredPost({
    Key? key,
    required this.title,
    required this.subtitle,
    required this.body,
    required this.dateTime,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final days = daysBetween(dateTime, DateTime.now());

    return InkWell(
      onTap: onPressed,
      borderRadius: BorderRadius.circular(4.0),
      child: Ink(
        padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 16.0),
        decoration: BoxDecoration(
            color: context.theme.colorScheme.surface,
            borderRadius: BorderRadius.circular(4.0)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Text(
                    title,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: context.textTheme.headline2
                        ?.copyWith(color: Palette.black50),
                  ),
                ),
                Text(
                  '$days days ago',
                  style: context.textTheme.headline6?.copyWith(fontSize: 12.0),
                ),
              ],
            ),
            Divider(
              color: context.theme.colorScheme.background,
              thickness: 1.5,
              height: 20.0,
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Expanded(
                  child: Text(
                    subtitle,
                    style: context.textTheme.bodyText1,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                SvgPicture.asset(
                  ImagePaths.starredPostIcons,
                  width: 84.0,
                  height: 24.0,
                )
              ],
            ),
            const SizedBox(
              height: 8.0,
            ),
            Text(
              body,
            ),
          ],
        ),
      ),
    );
  }
}
