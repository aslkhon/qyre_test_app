import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/utils/utils.dart';
import '../../../domain/domain.dart';
import '../week_view.dart';

class AvailabilityBlockReduced extends StatelessWidget {
  const AvailabilityBlockReduced({Key? key}) : super(key: key);

  WeekView _onSuccess(AvailabilityStateSuccess data) {
    return WeekView.reduced(week: data.week);
  }

  Container _onFailure(BuildContext context, String message) {
    return Container(
      height: 56.0,
      alignment: Alignment.center,
      child: Text(message),
    );
  }

  Container _onLoading(BuildContext context) {
    return Container(
      height: 56.0,
      alignment: Alignment.center,
      child: CircularProgressIndicator(
        color: context.theme.colorScheme.onBackground,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AvailabilityBloc, AvailabilityState>(
      builder: (context, state) {
        if (state is AvailabilityStateInitial) {
          return _onLoading(context);
        }

        if (state is AvailabilityStateFailure) {
          return _onFailure(context, state.message);
        }

        return _onSuccess(state as AvailabilityStateSuccess);
      },
    );
  }
}
