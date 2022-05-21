import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/const/const.dart';
import '../../../../core/utils/utils.dart';

class JobOffersPlaceHolder extends StatelessWidget {
  const JobOffersPlaceHolder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      borderRadius: BorderRadius.circular(4.0),
      child: Ink(
        padding: const EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4.0),
          color: context.theme.colorScheme.surface,
        ),
        child: Row(
          children: [
            SvgPicture.asset(
              ImagePaths.jobOffers,
              width: 54.0,
              height: 54.0,
            ),
            const Spacer(),
            SizedBox(
              width: MediaQuery.of(context).size.width - 134.0,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text(
                    'Job offers are shown here! Keep your profile updated to stay relevant for new opportunities.',
                  ),
                  const SizedBox(
                    height: 18.0,
                  ),
                  Row(
                    children: [
                      Text(
                        'Go to my profile',
                        style: context.textTheme.bodyText1,
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
            )
          ],
        ),
      ),
    );
  }
}
