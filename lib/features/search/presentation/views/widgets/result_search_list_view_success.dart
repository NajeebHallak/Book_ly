import 'package:book_ly/core/models/book_model/book_model.dart';
import 'package:book_ly/features/search/presentation/manag/result_view_cubit/result_view_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/widgets/newset_book_And_result_search_item.dart';

class ResultSrarchListViewSuccess extends StatelessWidget {
  const ResultSrarchListViewSuccess({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    List<BookModel> bookModel =
        BlocProvider.of<ResultSearchCubit>(context).bookModel!;
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) =>
            NewsetAndResultSearchBookItem(bookModel: bookModel[index]),
        childCount: bookModel.length,
      ),
    );
  }
}
