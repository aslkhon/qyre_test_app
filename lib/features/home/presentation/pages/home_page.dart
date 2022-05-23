import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qyre_test_app/features/home/presentation/widgets/app_bar/config/app_bar_consts.dart';
import 'package:qyre_test_app/features/home/presentation/widgets/navigation_bar/qyre_navigation_bar_item_icon.dart';

import '../../../../core/const/const.dart';
import '../../../../core/utils/utils.dart';
import '../../../availability/availability.dart';
import '../../../job_offers/job_offers.dart';
import '../../../productions/productions.dart';
import '../../../starred_posts/starred_posts.dart';
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
      items: const [
        BottomNavigationBarItem(
            icon: QyreNavigationBarItemIcon(
              icon: QyreIcons.home,
            ),
            label: 'home'),
        BottomNavigationBarItem(
            icon: QyreNavigationBarItemIcon(
              icon: QyreIcons.menu,
            ),
            label: 'menu'),
        BottomNavigationBarItem(
            icon: QyreNavigationBarItemIcon(
              icon: QyreIcons.bell,
              notificationsCount: 2,
            ),
            label: 'notifications'),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    final consts =
        AppBarConsts(viewOffsetTop: MediaQuery.of(context).viewPadding.top);

    return Scaffold(
      backgroundColor: context.theme.colorScheme.background,
      body: Stack(
        children: [
          QyreAppBar(consts: consts),
          _HomePageScrollView(consts: consts),
        ].reversed.toList(),
      ),
      bottomNavigationBar: _bottomNavigation(context),
    );
  }
}

class _HomePageScrollView extends StatefulWidget {
  final AppBarConsts consts;

  const _HomePageScrollView({
    Key? key,
    required this.consts,
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
    if (_scrollController.position.pixels <=
        widget.consts.offsetBeforeReduction) {
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
        children: [
          SizedBox(
            height: widget.consts.contentOffset,
          ),
          const AvailabilityBlockVisible(),
          const SuggestionsBlock(),
          const ProductionsBlock(),
          const ActionsBlock(),
          const JobOffersBlock(),
          const StarredPostsBlock(),
          const SizedBox(
            height: 30.0,
          ),
        ],
      ),
    );
  }
}
