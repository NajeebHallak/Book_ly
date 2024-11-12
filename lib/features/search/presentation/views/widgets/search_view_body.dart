import 'package:book_ly/core/utils/styles.dart';
import 'package:book_ly/features/search/presentation/views/widgets/custom_text_fild_search.dart';
import 'package:book_ly/features/search/presentation/views/widgets/result_search_list-view.dart';
import 'package:flutter/material.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: CustomTextFildSearch(),
        ),
        SliverToBoxAdapter(
          child: SizedBox(height: 5),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.0),
            child: Text('Result Search', style: Styles.textStyle18),
          ),
        ),
        SliverToBoxAdapter(
          child: SizedBox(height: 30),
        ),
        ResultSerchListView(),
      ],
    );
  }
}
