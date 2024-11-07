import 'package:book_ly/features/home/presentation/view/widgets/featured_list_view_details.dart';
import 'package:flutter/cupertino.dart';

import '../../../../../core/utils/styles.dart';

class BokDetailsSectionTow extends StatelessWidget {
  const BokDetailsSectionTow({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'You can also like',
              style: Styles.textStyle14
                  .copyWith(fontWeight: FontWeight.w600, fontSize: 15),
            ),
          ),
        ),
        const SizedBox(height: 16),
        const FeaturedListViewDetails(),
      ],
    );
  }
}
