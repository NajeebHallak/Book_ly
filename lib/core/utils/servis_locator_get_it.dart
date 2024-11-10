import 'package:book_ly/core/utils/api_services.dart';
import 'package:book_ly/features/home/data/repository/home_reop_impl.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setupServerLocatod() {
  getIt.registerSingleton<Api>(Api(Dio()));
  getIt.registerSingleton<HomeRepoImpl>(
    HomeRepoImpl(
      getIt.get<Api>(),
    ),
  );
}
