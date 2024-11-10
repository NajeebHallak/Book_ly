import 'package:book_ly/core/function/custom_launch_url.dart';
import 'package:book_ly/core/widgets/custom_elevated_button..dart';
import 'package:book_ly/features/home/data/models/book_model/book_model.dart';
import 'package:book_ly/features/home/presentation/view/widgets/custom_app_bar_details.dart';
import 'package:book_ly/features/home/presentation/view/widgets/featured_item.dart';
import 'package:book_ly/features/home/presentation/view/widgets/star_and_row.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../../core/utils/styles.dart';

class BokDetailsSectionOne extends StatelessWidget {
  const BokDetailsSectionOne({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const CustomAppBarDetails(),
        SizedBox(
          height: MediaQuery.of(context).size.height * .30,
          child: FeaturedItem(
            imageUrl: bookModel.volumeInfo.imageLinks?.thumbnail ?? '',
          ),
        ),
        const SizedBox(height: 43),
        Text(
          bookModel.volumeInfo.title!,
          textAlign: TextAlign.center,
          style: Styles.textStyle30,
        ),
        const SizedBox(height: 6),
        Opacity(
          opacity: 0.7,
          child: Text(
            bookModel.volumeInfo.authors?[0] ?? '0',
            style: Styles.textStyle18,
          ),
        ),
        const SizedBox(height: 18),
        StarandRow(
          count: bookModel.volumeInfo.pageCount ?? 00,
          rating: bookModel.volumeInfo.pageCount ?? 00,
        ),
        const SizedBox(height: 37),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 38),
          child: Row(
            children: [
              Expanded(
                child: CustomElevatedButton(
                  onPressed: () async {
                    await customLaunchUrl(
                        context, bookModel.accessInfo!.webReaderLink);
                  },
                  backgroundColor: Colors.white,
                  textColor: Colors.black,
                  text: getText(bookModel, bookModel.accessInfo!.webReaderLink),
                  borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(15),
                      topLeft: Radius.circular(15)),
                ),
              ),
              Expanded(
                child: CustomElevatedButton(
                  onPressed: () async {
                    await customLaunchUrl(
                        context, bookModel.volumeInfo.canonicalVolumeLink);
                  },
                  backgroundColor: const Color(0xFFEF8262),
                  textColor: Colors.white,
                  text: getText(
                      bookModel, bookModel.volumeInfo.canonicalVolumeLink),
                  borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(15),
                      bottomRight: Radius.circular(15)),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  String getText(BookModel bookModel, String? url) {
    if (url == null) {
      return 'Not Avaliable';
    } else {
      return 'preView';
    }
  }
}
