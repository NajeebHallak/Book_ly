import 'package:flutter/material.dart';

class FeaturedItem extends StatelessWidget {
  const FeaturedItem({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.5 / 3.7,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          image: const DecorationImage(
            image: NetworkImage(
                'https://t3.ftcdn.net/jpg/06/82/79/84/360_F_682798496_hpb7OUyimJlYMXJDsqgm9UqDSpY5lXNj.jpg'),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
