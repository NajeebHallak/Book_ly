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
        builder: (context, state) => const BookDetailsView(),
      ),
    ],
  );
}
