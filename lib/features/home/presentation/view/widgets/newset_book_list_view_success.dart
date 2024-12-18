import 'package:book_ly/features/home/presentation/manag/newset_books_cubit/newset_books_cubit.dart';
import 'package:book_ly/core/widgets/newset_book_And_result_search_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/models/book_model/book_model.dart';

class NesetBookListViewSuccess extends StatelessWidget {
  const NesetBookListViewSuccess({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    List<BookModel> bookModel =
        BlocProvider.of<NewsetBooksCubit>(context).bookModel!;
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) =>
            NewsetAndResultSearchBookItem(bookModel: bookModel[index]),
        childCount: bookModel.length,
      ),
    );
  }
}
