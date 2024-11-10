import 'package:book_ly/core/utils/routers.dart';
import 'package:book_ly/features/home/data/models/book_model/book_model.dart';
import 'package:book_ly/features/home/presentation/manag/featured_book_cubit/featured_book_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import 'featured_item.dart';

class FeaturedListViewSuccess extends StatelessWidget {
  const FeaturedListViewSuccess({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    List<BookModel> bookModel =
        BlocProvider.of<FeaturedBooksCubit>(context).bookModel!;
    return SizedBox(
      height: MediaQuery.of(context).size.height * .30,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: bookModel.length,
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.only(left: 20),
          child: GestureDetector(
            onTap: () {
              GoRouter.of(context)
                  .push(Routers.goBookDetailsView, extra: bookModel[index]);
            },
            child: FeaturedItem(
              imageUrl: bookModel[index].volumeInfo.imageLinks?.thumbnail ?? '',
            ),
          ),
        ),
      ),
    );
  }
}
