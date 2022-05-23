class AppBarConsts {
  final double viewOffsetTop;

  const AppBarConsts({required this.viewOffsetTop});

  double get appBarMinHeight => viewOffsetTop + 47.0;

  double get contentOffset => viewOffsetTop + 50.0;

  double get titleOffset => viewOffsetTop + 10.0;

  double get offsetBeforeReduction => viewOffsetTop + 48.0;
}
