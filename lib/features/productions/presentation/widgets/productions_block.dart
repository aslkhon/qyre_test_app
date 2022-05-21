import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/utils/utils.dart';
import '../../../../injection.dart';
import '../../domain/domain.dart';
import "production_placeholder.dart";
import 'production_card.dart';

class ProductionsBlock extends StatelessWidget {
  const ProductionsBlock({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          getIt<ProductionsBloc>()..add(const ProductionsEvent.fetch()),
      child: const _ProductionsBlockContent(),
    );
  }
}

class _ProductionsBlockContent extends StatelessWidget {
  const _ProductionsBlockContent({Key? key}) : super(key: key);

  Container _onLoading(BuildContext context) {
    return Container(
      height: 72.0,
      alignment: Alignment.center,
      child: CircularProgressIndicator(
        color: context.theme.colorScheme.onBackground,
      ),
    );
  }

  Container _onFailure(BuildContext context, String message) {
    return Container(
      height: 70.0,
      alignment: Alignment.center,
      child: Text(message),
    );
  }

  Wrap _onSuccess(ProductionsStateSucces state) {
    return Wrap(
      direction: Axis.vertical,
      spacing: 10.0,
      children: [
        if (state.productions.isEmpty) const ProductionsPlaceholder(),
        for (var production in state.productions)
          ProductionCard(
            imageSrc: production.imageSrc,
            title: production.title,
            location: production.location,
            startTime: production.startTime,
            endTime: production.endTime,
            onPressed: () {},
          ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 8.0,
          ),
          Text(
            'Today\'s productions',
            style: context.textTheme.headline1,
          ),
          const SizedBox(
            height: 14.0,
          ),
          BlocBuilder<ProductionsBloc, ProductionsState>(
            builder: (context, state) {
              if (state is ProductionsStateInitial) {
                return _onLoading(context);
              }

              if (state is ProductionsStateFailure) {
                return _onFailure(context, state.message);
              }

              return _onSuccess(state as ProductionsStateSucces);
            },
          )
        ],
      ),
    );
  }
}
