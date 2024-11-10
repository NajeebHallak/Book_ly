import 'package:book_ly/core/widgets/custom_error_text.dart';
import 'package:book_ly/core/widgets/custom_loading_indicator.dart';
import 'package:book_ly/features/home/presentation/manag/featured_book_cubit/featured_book_cubit.dart';
import 'package:book_ly/features/home/presentation/view/widgets/featured_list)view_success.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FeaturedListViewBuild extends StatelessWidget {
  const FeaturedListViewBuild({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBookState>(
      builder: (context, state) {
        if (state is FeaturedBookSuccess) {
          return const FeaturedListViewSuccess();
        } else if (state is FeaturedBookFailure) {
          return CustomErrorMassage(errorMassage: state.errorMassage);
        } else {
          return const Center(child: CustomLoadingIndicator(height: 65,));
        }
      },
    );
  }
}
