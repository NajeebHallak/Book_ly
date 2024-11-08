import 'package:book_ly/features/home/presentation/view/widgets/bok_details_section_one.dart';
import 'package:book_ly/features/home/presentation/view/widgets/book_details_sectionTow.dart';
import 'package:flutter/material.dart';

class BookDetailsView extends StatelessWidget {
  const BookDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: BookDetailsBody(),
      ),
    );
  }
}

class BookDetailsBody extends StatelessWidget {
  const BookDetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverFillRemaining(
          child: Column(
            children: [
              BokDetailsSectionOne(),
              Expanded(child: SizedBox(height: 50)),
              BokDetailsSectionTow(),
              SizedBox(height: 40),
            ],
          ),
        )
      ],
    );
  }
}
