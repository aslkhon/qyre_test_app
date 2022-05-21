import 'package:flutter/material.dart';
import 'package:qyre_test_app/features/home/presentation/widgets/actions_block/actions_block_item.dart';

import '../../../../../app/presentation/theme/palette.dart';
import '../../../../../core/const/image_paths.dart';

class ActionsBlock extends StatelessWidget {
  const ActionsBlock({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10.0),
      child: Row(
        children: [
          ActionsBlockItem(
            imageSrc: ImagePaths.myNetwork,
            title: 'My network',
            body: 'Connect and grow your network',
            gradient: Palette.gradientBlue,
            onPressed: () {},
          ),
          const SizedBox(
            width: 14.0,
          ),
          ActionsBlockItem(
            imageSrc: ImagePaths.quickHire,
            title: 'Quick hire',
            body: 'Hire someone quickly today',
            gradient: Palette.gradientRed,
            onPressed: () {},
          ),
          const SizedBox(
            width: 14.0,
          ),
          ActionsBlockItem(
            imageSrc: ImagePaths.myCv,
            title: 'My CV',
            body: 'Keep your CV updated to get the best offers',
            gradient: Palette.gradientPurple,
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
