import 'package:book_ly/core/utils/styles.dart';
import 'package:book_ly/features/home/presentation/view/widgets/custom_app_bar_details.dart';
import 'package:book_ly/features/home/presentation/view/widgets/featured_item.dart';

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
    return Column(
      children: [
        const CustomAppBarDetails(),
        SizedBox(
          height: MediaQuery.of(context).size.height * .40,
          child: const FeaturedItem(),
        ),
        const SizedBox(height: 43),
        const Text(
          'The Jungle Book',
          style: Styles.textStyle30,
        ),
        const SizedBox(
          height: 6,
        ),
        const Opacity(
          opacity: 0.7,
          child: Text(
            'Rudyard Kipling',
            style: Styles.textStyle18,
          ),
        ),
      ],
    );
  }
}
