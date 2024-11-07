import 'package:book_ly/features/home/presentation/view/widgets/featured_item.dart';
import 'package:flutter/material.dart';

class FeaturedListViewBuild extends StatelessWidget {
  const FeaturedListViewBuild({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .30,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => const Padding(
          padding: EdgeInsets.only(left: 20),
          child: FeaturedItem(),
        ),
      ),
    );
  }
}
