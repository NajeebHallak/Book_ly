import 'package:book_ly/features/home/presentation/view/widgets/best_seller_list_view_buil.dart';
import 'package:book_ly/features/home/presentation/view/widgets/costom_app_bar.dart';
import 'package:book_ly/features/home/presentation/view/widgets/featured_list_view_build.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../../../../core/utils/styles.dart';

class BodyHomeBody extends StatelessWidget {
  const BodyHomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      physics: BouncingScrollPhysics(),
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomAppBarHome(),
              FeaturedListViewBuild(),
              SizedBox(height: 40),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.0),
                child: Text(
                  'Newset Books',
                  style: Styles.textStyle18,
                ),
              ),
            ],
          ),
        ),
        BestSellerListViewBuil(),
      ],
    );
  }
}
