import 'package:book_ly/core/widgets/custom_error_text.dart';
import 'package:book_ly/core/widgets/custom_loading_indicator.dart';
import 'package:book_ly/features/home/presentation/manag/similar_cubit/similar_book_cubit.dart';
import 'package:book_ly/features/home/presentation/view/widgets/featured_list_view_details_success.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FeaturedListViewDetails extends StatelessWidget {
  const FeaturedListViewDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilarBookCubit, SimilarBookState>(
      builder: (context, state) {
        if (state is SimilarBookSuccess) {
          return const FeaturedListViewDetailsSuccess();
        } else if (state is SimilarBookFilure) {
          return CustomErrorMassage(errorMassage: state.errorMassage);
        } else {
          return const CustomLoadingIndicator(
            height: 65,
          );
        }
      },
    );
  }
}
