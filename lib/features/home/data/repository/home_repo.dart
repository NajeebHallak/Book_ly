import 'package:book_ly/core/models/book_model/book_model.dart';
import 'package:dartz/dartz.dart';

import '../../../../core/errors/failure.dart';

abstract class HomeRpo {
  Future<Either<Failure, List<BookModel>>> fetchNewsetBooks();
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks();
  Future<Either<Failure, List<BookModel>>> fethSimilardBooks();
}
