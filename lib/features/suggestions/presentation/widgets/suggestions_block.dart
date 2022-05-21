import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../injection.dart';
import '../../domain/domain.dart';
import 'profile_completeness_bar.dart';
import 'suggestion_card.dart';

class SuggestionsBlock extends StatelessWidget {
  const SuggestionsBlock({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(providers: [
      BlocProvider(
        create: (context) => getIt<ExtendNetworkSuggestionCubit>()..check(),
      ),
      BlocProvider(
        create: (context) => getIt<ProfileCompletenessCubit>()..check(),
      ),
      BlocProvider(
        create: (context) => getIt<VerificationSuggestionCubit>()..check(),
      )
    ], child: const _SuggestionsBlockContent());
  }
}

class _SuggestionsBlockContent extends StatelessWidget {
  const _SuggestionsBlockContent({Key? key}) : super(key: key);

  BlocBuilder<VerificationSuggestionCubit, bool> _verification() {
    return BlocBuilder<VerificationSuggestionCubit, bool>(
      builder: (context, state) {
        if (!state) return Container();

        return SuggestionCard(
          title: 'Get verified as an industry professional.',
          actionText: 'Get verified',
          onPressed: () {},
        );
      },
    );
  }

  BlocBuilder<ExtendNetworkSuggestionCubit, bool> _network() {
    return BlocBuilder<ExtendNetworkSuggestionCubit, bool>(
      builder: (context, state) {
        if (!state) return Container();

        return SuggestionCard(
          title: 'Connect with people you might know and extend your network.',
          actionText: 'Connect',
          onPressed: () {},
        );
      },
    );
  }

  BlocBuilder<ProfileCompletenessCubit, double?> _profileCompleteness() {
    return BlocBuilder<ProfileCompletenessCubit, double?>(
      builder: (context, state) {
        if (state == null || state >= 1.0) return Container();

        return SuggestionCard(
          title:
              'Complete your profile tooptimize your exposure in job searches.',
          actionText: 'Complete profile',
          child: ProfileCompletenessBar(
            completeness: state,
          ),
          onPressed: () {},
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 16.0),
        child: Wrap(
          spacing: 10.0,
          children: [
            _profileCompleteness(),
            _network(),
            _verification(),
          ],
        ),
      ),
    );
  }
}
