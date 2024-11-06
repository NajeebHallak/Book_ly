import 'package:book_ly/core/utils/styles.dart';
import 'package:book_ly/features/home/presentation/view/widgets/costom_app_bar.dart';
import 'package:book_ly/features/home/presentation/view/widgets/featured_list_view_build.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'widgets/custom_List_view_item.dart';

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

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30.0, right: 30, top: 20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const ImageItemInBest(),
          const SizedBox(
            width: 30,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * .5,
                child: const Text(
                  'Horry Potter \f and the goblet of fire',
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: Styles.textStyle20,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              const Text(
                'J.K.Rowling',
                style: Styles.textStyle14,
              ),
              const SizedBox(
                height: 5,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * .5,
                child: const Row(
                  children: [
                    Text(
                      r'19.99$',
                      style: Styles.textStyle18,
                    ),
                    Spacer(),
                    Text('⭐️ 4.8', style: Styles.textStyle16),
                    Text('(2390)', style: Styles.textStyle14),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class ImageItemInBest extends StatelessWidget {
  const ImageItemInBest({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 145,
      child: AspectRatio(
        aspectRatio: 2.6 / 4,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            image: const DecorationImage(
              image: NetworkImage(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRTGw8Keg29UD4lGRkaOymVPovmurwbcdNd0A&s'),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
