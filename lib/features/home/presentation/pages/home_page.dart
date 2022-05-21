import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qyre_test_app/features/availability/availability.dart';
import 'package:qyre_test_app/features/productions/productions.dart';
import 'dart:ui' as ui;

import 'package:qyre_test_app/features/suggestions/presentation/widgets/suggestions_block.dart';

import '../../../../injection.dart';
import '../widgets/actions_block/actions_block.dart';

class HomePage extends StatelessWidget {
  static const routeName = '/home';

  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          getIt<AvailabilityBloc>()..add(const AvailabilityEvent.fetch()),
      child: const _HomePageContent(),
    );
  }
}

class _HomePageContent extends StatelessWidget {
  const _HomePageContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            const _HomePageScrollView(),
            ClipRect(
              child: BackdropFilter(
                filter: ui.ImageFilter.blur(
                  sigmaX: 5.0,
                  sigmaY: 5.0,
                ),
                child: Container(
                  color: Colors.white.withOpacity(.7),
                  height: 100.0,
                  child: Column(
                    children: const [
                      Text('My availabilty'),
                      AvailabilityBlockReduced(),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class _HomePageScrollView extends StatefulWidget {
  const _HomePageScrollView({
    Key? key,
  }) : super(key: key);

  @override
  State<_HomePageScrollView> createState() => _HomePageScrollViewState();
}

class _HomePageScrollViewState extends State<_HomePageScrollView> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          SizedBox(
            height: 64.0,
          ),
          AvailabilityBlockVisible(),
          SuggestionsBlock(),
          ProductionsBlock(),
          ActionsBlock(),
          ActionsBlock(),
          ActionsBlock(),
          ActionsBlock(),
        ],
      ),
    );
  }
}
