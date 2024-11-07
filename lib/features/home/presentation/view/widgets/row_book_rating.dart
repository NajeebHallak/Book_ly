import 'package:book_ly/features/home/presentation/view/widgets/star_and_row.dart';
import 'package:flutter/material.dart';
import '../../../../../core/utils/styles.dart';

class RowBookRating extends StatelessWidget {
  const RowBookRating({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * .5,
      child: const Row(
        children: [
          Text(
            r'19.99$',
            style: Styles.textStyle20,
          ),
          Spacer(),
          StarandRow(),
        ],
      ),
    );
  }
}
