import 'package:flutter/material.dart';

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