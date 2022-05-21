import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../../../app/presentation/theme/palette.dart';
import '../../../../core/utils/utils.dart';

class JobOffer extends StatelessWidget {
  final String title;
  final String companyName;
  final DateTime dateTime;
  final DateTime beginDate;
  final DateTime endDate;
  final VoidCallback onPressed;

  const JobOffer({
    Key? key,
    required this.title,
    required this.companyName,
    required this.dateTime,
    required this.beginDate,
    required this.endDate,
    required this.onPressed,
  }) : super(key: key);

  int daysBetween(DateTime from, DateTime to) {
    from = DateTime(from.year, from.month, from.day);
    to = DateTime(to.year, to.month, to.day);
    return (to.difference(from).inHours / 24).round();
  }

  @override
  Widget build(BuildContext context) {
    final dateFormat = DateFormat('MMM d, yyyy');
    final style = context.textTheme.headline6?.copyWith(fontSize: 12.0);

    int days = daysBetween(beginDate, endDate);

    return InkWell(
      onTap: onPressed,
      borderRadius: BorderRadius.circular(4.0),
      child: Ink(
        width: MediaQuery.of(context).size.width - 32.0,
        padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 16.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4.0),
          color: context.theme.colorScheme.surface,
        ),
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
                  dateFormat.format(dateTime),
                  style: style,
                ),
              ],
            ),
            Divider(
              color: context.theme.colorScheme.background,
              thickness: 1.5,
              height: 20.0,
            ),
            Text(
              companyName,
              style: context.textTheme.bodyText1,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            const SizedBox(
              height: 5.0,
            ),
            DefaultTextStyle(
              style: style ?? const TextStyle(),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '${dateFormat.format(beginDate)} - ${dateFormat.format(endDate)}',
                  ),
                  Text('$days days'),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
