import 'package:book_ly/constans.dart';
import 'package:book_ly/core/utils/styles.dart';
import 'package:book_ly/features/home/presentation/view/widgets/best_seller_list_view_item.dart';
import 'package:book_ly/features/home/presentation/view/widgets/costom_app_bar.dart';
import 'package:book_ly/features/home/presentation/view/widgets/featured_list_view_build.dart';
import 'package:book_ly/features/home/presentation/view/widgets/image_in_item_best.dart';

import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: BodyHome(),
    );
  }
}

class BodyHome extends StatelessWidget {
  const BodyHome({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomAppBar(),
        FeaturedListViewBuild(),
        SizedBox(
          height: 40,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.0),
          child: Text(
            'Best Seller',
            style: Styles.textStyle18,
          ),
        ),
        BestSellerListViewItem(),
      ],
    );
  }
}
