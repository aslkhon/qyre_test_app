import 'package:flutter/material.dart';
import 'package:qyre_test_app/features/starred_posts/presentation/widgets/starred_post.dart';

import '../../../../core/utils/utils.dart';

class StarredPostsBlock extends StatelessWidget {
  const StarredPostsBlock({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 8.0,
          ),
          Text(
            'Starred posts',
            style: context.textTheme.headline1,
          ),
          const SizedBox(
            height: 14.0,
          ),
          StarredPost(
            title: 'Qyre US Production',
            subtitle: 'Updated priviligies for current',
            body:
                'I changed your admin roles to posters. With that you can’t send out offers. Just use the communication tool to get all the features!',
            dateTime: DateTime(2022, 5, 18),
            onPressed: () {},
          ),
          // const SizedBox(
          //   height: 14.0,
          // ),
          // const StarredPostsPlaceholder(),
        ],
      ),
    );
  }
}
