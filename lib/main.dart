import 'package:book_ly/constans.dart';
import 'package:book_ly/core/utils/routers.dart';
import 'package:book_ly/core/utils/servis_locator_get_it.dart';
import 'package:book_ly/features/home/data/repository/home_reop_impl.dart';
import 'package:book_ly/features/home/presentation/manag/featured_book_cubit/featured_book_cubit.dart';
import 'package:book_ly/features/home/presentation/manag/newset_books_cubit/newset_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  setupServerLocatod();
  runApp(const BookLy());
}

class BookLy extends StatelessWidget {
  const BookLy({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => FeaturedBooksCubit(getIt.get<HomeRepoImpl>())
            ..fetchFeaturedBooks(),
        ),
        BlocProvider(
          create: (context) =>
              NewsetBooksCubit(getIt.get<HomeRepoImpl>())..fetchNewsetBooks(),
        ),
      ],
      child: MaterialApp.router(
        routerConfig: Routers.router,
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: kPrimaryColor,
          textTheme:
              GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme),
        ),
      ),
    );
  }
}
