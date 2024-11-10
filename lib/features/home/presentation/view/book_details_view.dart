import 'package:book_ly/features/home/presentation/manag/similar_cubit/similar_book_cubit.dart';
import 'package:book_ly/features/home/presentation/view/widgets/book_details_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/models/book_model/book_model.dart';

class BookDetailsView extends StatefulWidget {
  const BookDetailsView({super.key, required this.bookModel});
  final BookModel bookModel;

  @override
  State<BookDetailsView> createState() => _BookDetailsViewState();
}

class _BookDetailsViewState extends State<BookDetailsView> {
  @override
  void initState() {
    super.initState();
    BlocProvider.of<SimilarBookCubit>(context).fethSimilardBooks();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: BookDetailsBody(bookModel: widget.bookModel),
      ),
    );
  }
}
