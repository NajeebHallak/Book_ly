import 'package:bloc/bloc.dart';
import 'package:book_ly/core/models/book_model/book_model.dart';
import 'package:book_ly/features/home/data/repository/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'featured_book_state.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBookState> {
  FeaturedBooksCubit(this.homeRpo) : super(FeaturedBookInitial());

  HomeRpo homeRpo;
  List<BookModel>? bookModel;
  Future<void> fetchFeaturedBooks() async {
    emit(FeaturedBookLoade());
    var result = await homeRpo.fetchFeaturedBooks();
    result.fold((failure) {
      emit(FeaturedBookFailure(failure.errorMassage));
    }, (listBooks) {
      bookModel = listBooks;
      emit(FeaturedBookSuccess());
    });
  }
}
