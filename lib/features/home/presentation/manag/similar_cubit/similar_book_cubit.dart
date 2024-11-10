import 'package:bloc/bloc.dart';
import 'package:book_ly/features/home/data/models/book_model/book_model.dart';
import 'package:book_ly/features/home/data/repository/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'similar_book_state.dart';

class SimilarBookCubit extends Cubit<SimilarBookState> {
  SimilarBookCubit(this.homeRpo) : super(SimilarBookInitial());

  HomeRpo homeRpo;
  List<BookModel>? bookModel;
  Future<void> fethSimilardBooks() async {
    emit(SimilarBookLoade());
    var result = await homeRpo.fethSimilardBooks();
    result.fold((failure) {
      emit(SimilarBookFilure(errorMassage: failure.errorMassage));
    }, (listBook) {
      bookModel = listBook;
      emit(SimilarBookSuccess());
    });
  }
}
