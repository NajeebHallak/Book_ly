import 'package:book_ly/features/home/presentation/manag/newset_books_cubit/newset_books_cubit.dart';
import 'package:book_ly/features/home/presentation/view/widgets/best_seller_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../data/models/book_model/book_model.dart';

class BestSellsrListViewSuccess extends StatelessWidget {
  const BestSellsrListViewSuccess({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    List<BookModel>bookModel =
        BlocProvider.of<NewsetBooksCubit>(context).bookModel!;
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) => BestSellerItem(bookModel: bookModel[index]),
        childCount: bookModel.length,
      ),
    );
  }

}
