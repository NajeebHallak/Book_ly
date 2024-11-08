import 'package:book_ly/core/errors/failure.dart';
import 'package:book_ly/core/utils/api_services.dart';

import 'package:book_ly/features/home/data/models/book_model/book_model.dart';
import 'package:book_ly/features/home/data/repository/home_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImpl implements HomeRpo {
  Api api;
  HomeRepoImpl(this.api);
  @override
  Future<Either<Failure, List<BookModel>>> fetchNewsetBooks() async {
    try {
      Map<String, dynamic> theDate = await api.get(
          endBoint:
              'volumes?q=subjict:programming&Filtering=free-ebooks&sorting=newest');
      List<BookModel> bookModel = [];
      for (var element in theDate["items"]) {
        bookModel.add(BookModel.fromJson(element));
      }

      return right(bookModel);
    } on DioException catch (e) {
      return left(ServerFailure.fromDioError(e));
    } catch (e) {
      return left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks() {
    // TODO: implement fetchFeaturedBooks
    throw UnimplementedError();
  }
}
