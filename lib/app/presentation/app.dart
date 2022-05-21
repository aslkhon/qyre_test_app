import 'package:flutter/material.dart';

import 'theme/default_theme.dart' as theme;
import '../../features/home/home.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: theme.defaultTheme,
      home: const HomePage(),
    );
  }
}
