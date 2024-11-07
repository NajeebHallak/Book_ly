
import 'package:book_ly/features/home/presentation/view/widgets/box_action.dart';
import 'package:book_ly/features/home/presentation/view/widgets/custom_app_bar_details.dart';
import 'package:book_ly/features/home/presentation/view/widgets/featured_item.dart';
import 'package:book_ly/features/home/presentation/view/widgets/star_and_row.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';

class BokDetailsSectionOne extends StatelessWidget {
  const BokDetailsSectionOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CustomAppBarDetails(),
        SizedBox(
          height: MediaQuery.of(context).size.height * .30,
          child: const FeaturedItem(),
        ),
        const SizedBox(height: 43),
        const Text(
          'The Jungle Book',
          style: Styles.textStyle30,
        ),
        const SizedBox(height: 6),
        const Opacity(
          opacity: 0.7,
          child: Text(
            'Rudyard Kipling',
            style: Styles.textStyle18,
          ),
        ),
        const SizedBox(height: 18),
        const StarandRow(),
        const SizedBox(height: 37),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 38),
          child: Row(
            children: [
              Expanded(
                child: BoxAction(
                  backgroundColor: Colors.white,
                  textColor: Colors.black,
                  text: '19.99',
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(15),
                      topLeft: Radius.circular(15)),
                ),
              ),
              Expanded(
                child: BoxAction(
                  backgroundColor: Color(0xFFEF8262),
                  textColor: Colors.white,
                  text: 'Free provide',
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(15),
                      bottomRight: Radius.circular(15)),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
