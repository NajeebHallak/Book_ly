import 'package:book_ly/core/errors/failure.dart';
import 'package:book_ly/core/models/book_model/book_model.dart';
import 'package:book_ly/core/utils/api_services.dart';
import 'package:book_ly/features/search/data/repository/search_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class SearchRepoImpl implements SearchRepo {
  final Api abi;

  SearchRepoImpl(this.abi);
  @override
  Future<Either<Failure, List<BookModel>>> fetchResultSearch(
      {required String search}) async {
    try {
      Map<String, dynamic> theDate = await abi.get(
          endBoint:
              'volumes?q=subjict:$search&Filtering=free-ebooks&sorting=newest');
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
}
