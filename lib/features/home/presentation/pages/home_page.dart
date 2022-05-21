import 'package:flutter/material.dart';
import 'package:qyre_test_app/features/availability/availability.dart';
import 'package:qyre_test_app/features/home/presentation/widgets/actions_block/actions_block.dart';
import 'dart:ui' as ui;

class HomePage extends StatelessWidget {
  static const routeName = '/home';

  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            const HomePageContent(),
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

class HomePageContent extends StatefulWidget {
  const HomePageContent({
    Key? key,
  }) : super(key: key);

  @override
  State<HomePageContent> createState() => _HomePageContentState();
}

class _HomePageContentState extends State<HomePageContent> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        children: const [
          SizedBox(
            height: 64.0,
          ),
          AvailabilityBlockVisible(),
          ActionsBlock(),
          ActionsBlock(),
          ActionsBlock(),
          ActionsBlock(),
          ActionsBlock(),
        ],
      ),
    );
  }
}
