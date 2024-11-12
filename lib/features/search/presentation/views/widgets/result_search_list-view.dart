import 'package:book_ly/core/utils/styles.dart';
import 'package:book_ly/core/widgets/custom_error_text.dart';
import 'package:book_ly/core/widgets/custom_loading_indicator.dart';
import 'package:book_ly/features/search/presentation/manag/result_view_cubit/result_view_cubit.dart';
import 'package:book_ly/features/search/presentation/views/widgets/result_search_list_view_success.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ResultSerchListView extends StatelessWidget {
  const ResultSerchListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ResultSearchCubit, ResultSearchState>(
      builder: (context, state) {
        if (state is ResultsearchInitial) {
          return const SliverToBoxAdapter(
            child: Center(
              child: Text(
                'Start searching',
                style: Styles.textStyle16,
              ),
            ),
          );
        } else if (state is ResultSearchSuccess) {
          return const ResultSrarchListViewSuccess();
        } else if (state is ResultSearchFailure) {
          return SliverToBoxAdapter(
            child: CustomErrorMassage(
              errorMassage: state.errorMassages,
            ),
          );
        } else {
          return const SliverToBoxAdapter(
            child: Center(
              child: CustomLoadingIndicator(height: 65),
            ),
          );
        }
      },
    );
  }
}
