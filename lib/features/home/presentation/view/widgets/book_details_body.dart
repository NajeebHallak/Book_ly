import 'package:book_ly/core/models/book_model/book_model.dart';
import 'package:book_ly/features/home/presentation/view/widgets/book_details_sectionTow.dart';
import 'package:book_ly/features/home/presentation/view/widgets/book_details_section_one.dart';
import 'package:flutter/material.dart';

class BookDetailsBody extends StatelessWidget {
  const BookDetailsBody({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          child: Column(
            children: [
              BokDetailsSectionOne(bookModel: bookModel),
              const Expanded(child: SizedBox(height: 50)),
              const BokDetailsSectionTow(),
              const SizedBox(height: 40),
            ],
          ),
        )
      ],
    );
  }
}
