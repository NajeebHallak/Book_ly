import 'package:flutter/material.dart';

import 'best_seller_item.dart';

class BestSellerListViewBuil extends StatelessWidget {
  const BestSellerListViewBuil({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) => const BestSellerItem(),
      ),
    );
  }
}
