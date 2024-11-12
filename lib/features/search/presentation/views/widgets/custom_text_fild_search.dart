import 'package:book_ly/core/utils/styles.dart';
import 'package:book_ly/features/search/presentation/manag/result_view_cubit/result_view_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomTextFildSearch extends StatelessWidget {
  const CustomTextFildSearch({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    String? theValue;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 45),
      child: TextField(
        onChanged: (value) {
          theValue = value;
        },
        onSubmitted: (value) {
          BlocProvider.of<ResultSearchCubit>(context)
              .fetchResultSearch(search: value);
        },
        decoration: InputDecoration(
            border: const OutlineInputBorder(),
            labelText: 'Search',
            labelStyle: Styles.textStyle16,
            suffixIcon: IconButton(
              onPressed: () {
                theValue != null
                    ? BlocProvider.of<ResultSearchCubit>(context)
                        .fetchResultSearch(search: theValue!)
                    : print('No search yet');
              },
              icon: const Icon(
                FontAwesomeIcons.magnifyingGlass,
                size: 21,
              ),
            )),
      ),
    );
  }
}
