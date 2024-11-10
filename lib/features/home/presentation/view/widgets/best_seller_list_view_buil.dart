import 'package:book_ly/core/widgets/custom_error_text.dart';
import 'package:book_ly/core/widgets/custom_loading_indicator.dart';
import 'package:book_ly/features/home/presentation/manag/newset_books_cubit/newset_books_cubit.dart';
import 'package:book_ly/features/home/presentation/view/widgets/best_seller_list_view_success.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BestSellerListViewBuil extends StatelessWidget {
  const BestSellerListViewBuil({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewsetBooksCubit, NewsetBooksState>(
      builder: (context, state) {
        if (state is NewsetBooksSucess) {
          return const BestSellsrListViewSuccess();
        } else if (state is NewsetBooksFailure) {
          return SliverToBoxAdapter(
              child: CustomErrorMassage(errorMassage: state.errorMassage));
        } else {
          return const SliverToBoxAdapter(
            child:  Center(
                child: CustomLoadingIndicator(
              height: 65,
            )),
          );
        }
      },
    );
  }
}
