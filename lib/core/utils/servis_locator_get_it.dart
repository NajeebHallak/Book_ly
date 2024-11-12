import 'package:book_ly/core/utils/api_services.dart';
import 'package:book_ly/features/home/data/repository/home_reop_impl.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import '../../features/search/data/repository/search_repo_impl.dart';

final getIt = GetIt.instance;

void setupServerLocatod() {
  getIt.registerSingleton<Api>(Api(Dio()));
  getIt.registerSingleton<HomeRepoImpl>(
    HomeRepoImpl(
      getIt.get<Api>(),
    ),
  );
  getIt.registerSingleton<SearchRepoImpl>(SearchRepoImpl(getIt.get<Api>()));
}
