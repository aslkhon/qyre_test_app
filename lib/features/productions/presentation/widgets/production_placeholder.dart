import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/const/const.dart';
import '../../../../core/utils/utils.dart';

class ProductionsPlaceholder extends StatelessWidget {
  const ProductionsPlaceholder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90.0,
      width: MediaQuery.of(context).size.width - 32.0,
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4.0),
        color: context.theme.colorScheme.surface,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          SvgPicture.asset(ImagePaths.productions),
          const SizedBox(width: 16.0),
          const Expanded(
            child: Text(
              'All of your today’s productions will be displayed here.',
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
            ),
          )
        ],
      ),
    );
  }
}
