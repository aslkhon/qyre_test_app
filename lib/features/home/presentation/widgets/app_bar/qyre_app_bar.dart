import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'dart:ui' as ui;

import '../../../../availability/availability.dart';
import '../../blocs/extend_app_bar_cubit.dart';
import '../../../../../core/utils/utils.dart';
import 'config/app_bar_consts.dart';

class QyreAppBar extends StatelessWidget {
  final AppBarConsts consts;

  const QyreAppBar({
    Key? key,
    required this.consts,
  }) : super(key: key);

  static const _expansionHeight = 44.0;

  static const _maxTranslateY = 44.0;

  static const _blurSigma = 15.0;

  static const _animationDuration = Duration(milliseconds: 100);

  static const _animationCurve = Curves.easeOut;

  Container _animationContent(
      BuildContext context, double animationPercent, Widget? child) {
    return Container(
      color: context.theme.colorScheme.background.withOpacity(0.7),
      height: consts.appBarMinHeight + _expansionHeight * animationPercent,
      child: SingleChildScrollView(
        physics: const NeverScrollableScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(16.0, consts.titleOffset, 16.0, 3.0),
              child: Text(
                'My Availabilty',
                style: context.textTheme.headline1,
              ),
            ),
            Container(
              transform: Matrix4.translationValues(
                0.0,
                -_maxTranslateY + _maxTranslateY * animationPercent,
                0.0,
              ),
              child: Opacity(
                opacity: animationPercent,
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
          sigmaX: _blurSigma,
          sigmaY: _blurSigma,
        ),
        child: BlocBuilder<ExtendAppBarCubit, bool>(
          builder: (context, state) {
            return TweenAnimationBuilder<double>(
              duration: _animationDuration,
              curve: _animationCurve,
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
