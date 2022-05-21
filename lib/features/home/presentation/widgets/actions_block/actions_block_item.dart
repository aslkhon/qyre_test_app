import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:qyre_test_app/core/utils/utils.dart';

class ActionsBlockItem extends StatelessWidget {
  final String imageSrc;
  final String title;
  final String body;
  final LinearGradient gradient;
  final VoidCallback onPressed;

  const ActionsBlockItem({
    Key? key,
    required this.imageSrc,
    required this.title,
    required this.body,
    required this.gradient,
    required this.onPressed,
  }) : super(key: key);

  SvgPicture _image() {
    if (imageSrc.startsWith('http')) {
      return SvgPicture.network(
        imageSrc,
        fit: BoxFit.fitHeight,
        height: 32.0,
      );
    }

    return SvgPicture.asset(
      imageSrc,
      fit: BoxFit.fitHeight,
      height: 32.0,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: onPressed,
        child: Ink(
          height: 140.0,
          padding: const EdgeInsets.symmetric(vertical: 17.0, horizontal: 12.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4.0),
            gradient: gradient,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _image(),
              const SizedBox(height: 12.0),
              Text(
                title,
                style: context.textTheme.headline4,
                overflow: TextOverflow.ellipsis,
              ),
              const SizedBox(height: 3.0),
              Text(
                body,
                style: context.textTheme.headline5,
                overflow: TextOverflow.ellipsis,
                maxLines: 3,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
