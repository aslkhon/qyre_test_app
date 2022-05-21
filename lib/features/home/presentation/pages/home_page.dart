import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/const/const.dart';
import '../../../../core/utils/utils.dart';
import '../../../availability/availability.dart';
import '../../../job_offers/job_offers.dart';
import '../../../productions/productions.dart';
import '../../../suggestions/suggestions.dart';
import '../../../../injection.dart';
import '../blocs/extend_app_bar_cubit.dart';
import '../widgets/actions_block/actions_block.dart';
import '../widgets/app_bar/qyre_app_bar.dart';

class HomePage extends StatelessWidget {
  static const routeName = '/home';

  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
              getIt<AvailabilityBloc>()..add(const AvailabilityEvent.fetch()),
        ),
        BlocProvider(
          create: (context) => getIt<ExtendAppBarCubit>(),
        ),
      ],
      child: const _HomePageContent(),
    );
  }
}

class _HomePageContent extends StatelessWidget {
  const _HomePageContent({Key? key}) : super(key: key);

  BottomNavigationBar _bottomNavigation(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: 0,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      iconSize: 20.0,
      selectedItemColor: context.theme.colorScheme.background,
      unselectedItemColor: context.theme.colorScheme.surface,
      backgroundColor: context.theme.colorScheme.onBackground,
      items: [
        const BottomNavigationBarItem(
            icon: Icon(QyreIcons.home), label: 'home'),
        const BottomNavigationBarItem(
            icon: Icon(QyreIcons.menu), label: 'menu'),
        BottomNavigationBarItem(
            icon: Stack(
              children: [
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Icon(QyreIcons.bell),
                ),
                _badge(context)
              ],
            ),
            label: 'notifications'),
      ],
    );
  }

  Positioned _badge(BuildContext context) {
    return Positioned(
      top: 0,
      right: 0,
      child: Container(
        height: 16.0,
        width: 16.0,
        decoration: BoxDecoration(
          color: context.theme.colorScheme.secondary,
          borderRadius: BorderRadius.circular(8.0),
        ),
        alignment: Alignment.center,
        child: Text(
          '2',
          style: context.textTheme.headline5,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: const [
          _HomePageScrollView(),
          QyreAppBar(),
        ],
      ),
      bottomNavigationBar: _bottomNavigation(context),
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
  final _scrollController = ScrollController();

  bool _extendAppBar = false;

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
  }

  @override
  void dispose() {
    _scrollController
      ..removeListener(_onScroll)
      ..dispose();
    super.dispose();
  }

  void _onScroll() {
    if (_scrollController.position.pixels <= 112.0) {
      if (_extendAppBar) {
        _extendAppBar = false;
        context.read<ExtendAppBarCubit>().reduce();
      }
    } else {
      if (!_extendAppBar) {
        _extendAppBar = true;
        context.read<ExtendAppBarCubit>().extend();
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      controller: _scrollController,
      physics: const BouncingScrollPhysics(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          SizedBox(
            height: 80.0,
          ),
          AvailabilityBlockVisible(),
          SuggestionsBlock(),
          ProductionsBlock(),
          ActionsBlock(),
          JobOffersBlock()
        ],
      ),
    );
  }
}
