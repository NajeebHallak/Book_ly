import 'package:bloc/bloc.dart';
import 'package:book_ly/core/models/book_model/book_model.dart';
import 'package:book_ly/features/search/data/repository/search_repo.dart';
import 'package:equatable/equatable.dart';

part 'result_view_state.dart';

class ResultSearchCubit extends Cubit<ResultSearchState> {
  ResultSearchCubit(this.searchRepo) : super(ResultsearchInitial());

  SearchRepo searchRepo;
  List<BookModel>? bookModel;
  Future<void> fetchResultSearch({required String search}) async {
    emit(ResultSearchLoade());
    var result = await searchRepo.fetchResultSearch(search: search);
    result.fold((failure) {
      emit(ResultSearchFailure(errorMassages: failure.errorMassage));
    }, (listBook) {
      bookModel = listBook;
      emit(ResultSearchSuccess());
    });
  }
}
