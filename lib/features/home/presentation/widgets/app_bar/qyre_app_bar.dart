import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'dart:ui' as ui;

import '../../../../availability/availability.dart';
import '../../blocs/extend_app_bar_cubit.dart';
import '../../../../../core/utils/utils.dart';

class QyreAppBar extends StatelessWidget {
  const QyreAppBar({
    Key? key,
  }) : super(key: key);

  Container _animationContent(
      BuildContext context, double data, Widget? child) {
    return Container(
      color: context.theme.colorScheme.background.withOpacity(.7),
      height: 90.0 + 44.0 * data,
      child: SingleChildScrollView(
        physics: const NeverScrollableScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(16.0, 48.0, 16.0, 0.0),
              child: Text(
                'My availabilty',
                style: context.textTheme.headline1,
              ),
            ),
            Container(
              transform:
                  Matrix4.translationValues(0.0, -40.0 + 40.0 * data, 0.0),
              child: Opacity(
                opacity: data,
                child: child,
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ClipRect(
      child: BackdropFilter(
        filter: ui.ImageFilter.blur(
          sigmaX: 10.0,
          sigmaY: 10.0,
        ),
        child: BlocBuilder<ExtendAppBarCubit, bool>(
          builder: (context, state) {
            return TweenAnimationBuilder<double>(
              duration: const Duration(milliseconds: 180),
              curve: Curves.easeInCubic,
              tween: Tween<double>(begin: 0, end: state ? 1.0 : 0.0),
              child: const AvailabilityBlockReduced(),
              builder: (context, data, child) {
                return _animationContent(context, data, child);
              },
            );
          },
        ),
      ),
    );
  }
}
