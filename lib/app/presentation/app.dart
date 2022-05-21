import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../injection.dart';
import 'theme/default_theme.dart' as theme;

import '../../features/availability/availability.dart';
import '../../features/home/home.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: theme.defaultTheme,
      home: MultiBlocProvider(
        providers: [
          BlocProvider(
              create: (context) => getIt<AvailabilityBloc>()
                ..add(const AvailabilityEvent.fetch())),
        ],
        child: const HomePage(),
      ),
    );
  }
}
