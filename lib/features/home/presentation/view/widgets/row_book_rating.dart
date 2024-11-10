import 'package:book_ly/features/home/presentation/view/widgets/star_and_row.dart';
import 'package:flutter/material.dart';
import '../../../../../core/utils/styles.dart';

class RowBookRating extends StatelessWidget {
  const RowBookRating({
    super.key,
    required this.rating,
    required this.count,
  });
  final int rating;
  final int count;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * .5,
      child: Row(
        children: [
          const Text(
            'Free',
            style: Styles.textStyle20,
          ),
           const Spacer(),
          StarandRow(
            rating: rating,
            count: count,
          ),
        ],
      ),
    );
  }
}
