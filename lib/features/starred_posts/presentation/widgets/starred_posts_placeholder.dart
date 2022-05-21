import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/const/const.dart';
import '../../../../core/utils/utils.dart';

class StarredPostsPlaceholder extends StatelessWidget {
  const StarredPostsPlaceholder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: context.theme.colorScheme.surface,
        borderRadius: BorderRadius.circular(4.0),
      ),
      child: Row(
        children: [
          SvgPicture.asset(
            ImagePaths.favorites,
            height: 54.0,
            width: 54.0,
          ),
          const SizedBox(
            width: 16.0,
          ),
          const Expanded(
            child: Text(
                'Posts that are extra relevant to you can be marked with a star and will be shown here for easy access.'),
          ),
        ],
      ),
    );
  }
}
