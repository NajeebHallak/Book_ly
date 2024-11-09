import 'package:bloc/bloc.dart';
import 'package:book_ly/features/home/data/repository/home_repo.dart';
import 'package:equatable/equatable.dart';
import '../../../data/models/book_model/book_model.dart';
part 'newset_books_state.dart';

class NewsetBooksCubit extends Cubit<NewsetBooksState> {
  NewsetBooksCubit(this.homeRpo) : super(NewsetBooksInitial());

  HomeRpo homeRpo;
  List<BookModel>? bookModel;
  Future<void> fetchNewsetBooks() async {
    var restule = await homeRpo.fetchNewsetBooks();
    restule.fold((failure) {
      emit(NewsetBooksFailure(failure.errorMassage));
    }, (listBook) {
      bookModel = listBook;
      emit(NewsetBooksSucess());
    });
  }
}
