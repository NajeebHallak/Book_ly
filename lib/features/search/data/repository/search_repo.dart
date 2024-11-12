import 'package:book_ly/core/errors/failure.dart';
import 'package:book_ly/core/models/book_model/book_model.dart';
import 'package:dartz/dartz.dart';

abstract class SearchRepo {
  Future<Either<Failure, List<BookModel>>> fetchResultSearch(
      {required String search});
}
