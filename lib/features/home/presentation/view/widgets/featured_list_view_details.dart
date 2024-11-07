import 'package:flutter/cupertino.dart';

import 'featured_item.dart';

class FeaturedListViewDetails extends StatelessWidget {
  const FeaturedListViewDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .156,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => const Padding(
            padding: EdgeInsets.only(left: 8),
            child: FeaturedItem(),
          ),
        ),
      ),
    );
  }
}
