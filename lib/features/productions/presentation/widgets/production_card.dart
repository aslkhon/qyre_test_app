import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../../../core/utils/utils.dart';
import '../../../../core/const/const.dart';

class ProductionCard extends StatelessWidget {
  final String imageSrc;
  final String title;
  final String location;
  final DateTime startTime;
  final DateTime endTime;
  final VoidCallback onPressed;

  const ProductionCard({
    Key? key,
    required this.imageSrc,
    required this.title,
    required this.location,
    required this.startTime,
    required this.endTime,
    required this.onPressed,
  }) : super(key: key);

  Expanded _content(BuildContext context) {
    final dateFormat = DateFormat('MMM d, yyyy');

    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 16.0),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                    style: context.textTheme.headline3,
                  ),
                  const Spacer(),
                  Text(
                    '$location ${dateFormat.format(startTime)} - ${dateFormat.format(endTime)}',
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                    style: context.textTheme.headline6,
                  ),
                ],
              ),
            ),
            const SizedBox(
              width: 9.0,
            ),
            const Icon(
              QyreIcons.chevronRight,
              size: 10.0,
            )
          ],
          //     const Spacer(),
        ),
      ),
    );
  }

  ClipRRect _image() {
    late final Image image;

    if (imageSrc.startsWith('http')) {
      image = Image.network(
        imageSrc,
        height: 70.0,
        width: 70.0,
        fit: BoxFit.cover,
      );
    } else {
      image = Image.asset(
        imageSrc,
        height: 70.0,
        width: 70.0,
        fit: BoxFit.cover,
      );
    }

    return ClipRRect(
      borderRadius: BorderRadius.circular(4.0),
      child: image,
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      borderRadius: BorderRadius.circular(4.0),
      child: Ink(
        height: 70.0,
        width: MediaQuery.of(context).size.width - 32.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4.0),
          color: context.theme.colorScheme.surface,
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            _image(),
            _content(context),
          ],
        ),
      ),
    );
  }
}
