import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../core/utils/styles.dart';

class RowBookRating extends StatelessWidget {
  const RowBookRating({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * .5,
      child: Row(
        children: [
          const Text(
            r'19.99$',
            style: Styles.textStyle20,
          ),
          const Spacer(),
          const Icon(
            FontAwesomeIcons.solidStar,
            color: Color(0xFFFFDD4F),
          ),
          const SizedBox(
            width: 6.3,
          ),
          const Text('4.8', style: Styles.textStyle16),
          const SizedBox(
            width: 5,
          ),
          Text('(2390)',
              style:
                  Styles.textStyle14.copyWith(color: const Color(0xFF707070))),
        ],
      ),
    );
  }
}
