import 'package:book_ly/core/utils/servis_locator_get_it.dart';
import 'package:book_ly/features/home/data/models/book_model/book_model.dart';
import 'package:book_ly/features/home/data/repository/home_reop_impl.dart';
import 'package:book_ly/features/home/presentation/manag/similar_cubit/similar_book_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../features/home/presentation/view/book_details_view.dart';
import '../../features/home/presentation/view/home_view.dart';
import '../../features/splash/presentation/views/spalsh_view.dart';

abstract class Routers {
  static const goHomeView = '/homeView';
  static const goBookDetailsView = '/BookDetailsView';

  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: goHomeView,
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: goBookDetailsView,
        builder: (context, state) => BlocProvider(
          create: (context) => SimilarBookCubit(getIt.get<HomeRepoImpl>()),
          child: BookDetailsView(
            bookModel: state.extra as BookModel,
          ),
        ),
      ),
    ],
  );
}
