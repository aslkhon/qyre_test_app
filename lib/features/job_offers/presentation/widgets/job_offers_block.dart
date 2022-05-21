import 'package:flutter/material.dart';

import '../../../../core/utils/utils.dart';
import 'job_offer.dart';

class JobOffersBlock extends StatelessWidget {
  const JobOffersBlock({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final offer = JobOffer(
      title: 'Boom Operator',
      companyName: 'Masterchef',
      dateTime: DateTime(2022, 1, 12),
      beginDate: DateTime(2022, 1, 14),
      endDate: DateTime(2022, 2, 23),
      onPressed: () {},
    );

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 8.0,
          ),
          Text(
            'My job offers',
            style: context.textTheme.headline1,
          ),
          const SizedBox(
            height: 14.0,
          ),
          Wrap(
            direction: Axis.vertical,
            spacing: 10.0,
            children: [
              offer,
              offer,
            ],
          ),
          const SizedBox(
            height: 14.0,
          ),
          // const JobOffersPlaceHolder(),
        ],
      ),
    );
  }
}
