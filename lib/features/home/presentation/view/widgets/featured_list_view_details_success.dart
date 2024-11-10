import 'package:book_ly/features/home/presentation/view/widgets/featured_item.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../data/models/book_model/book_model.dart';
import '../../manag/similar_cubit/similar_book_cubit.dart';

class FeaturedListViewDetailsSuccess extends StatelessWidget {
  const FeaturedListViewDetailsSuccess({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    List<BookModel> bookModel =
        BlocProvider.of<SimilarBookCubit>(context).bookModel!;
    return SizedBox(
      height: MediaQuery.of(context).size.height * .156,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: ListView.builder(
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemCount: bookModel.length,
          itemBuilder: (context, index) => Padding(
            padding: const EdgeInsets.only(left: 8),
            child: FeaturedItem(
              imageUrl: bookModel[index].volumeInfo.imageLinks?.thumbnail ?? '',
            ),
          ),
        ),
      ),
    );
  }
}
