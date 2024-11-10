import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../../../../core/widgets/custom_loading_indicator.dart';

class ImageInItemBset extends StatelessWidget {
  const ImageInItemBset({
    super.key,
    required this.imageUrl,
  });
  final String imageUrl;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 130,
      child: AspectRatio(
        aspectRatio: 2.8 / 4,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: CachedNetworkImage(
            imageUrl: imageUrl,
            placeholder: (context, url) => const Center(
                child: CustomLoadingIndicator(
              height: 45,
            )),
            errorWidget: (context, url, error) => const Icon(Icons.error),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
// Container(
//           decoration: BoxDecoration(
//             borderRadius: BorderRadius.circular(15),
//             image: const DecorationImage(
//               image: NetworkImage(
//                   'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRTGw8Keg29UD4lGRkaOymVPovmurwbcdNd0A&s'),
//               fit: BoxFit.cover,
//             ),
//           ),
//         ),