part of 'similar_book_cubit.dart';

sealed class SimilarBookState extends Equatable {
  const SimilarBookState();

  @override
  List<Object> get props => [];
}

final class SimilarBookInitial extends SimilarBookState {}

final class SimilarBookLoade extends SimilarBookState {}

final class SimilarBookFilure extends SimilarBookState {
  final String errorMassage;

  const SimilarBookFilure({required this.errorMassage});
}

final class SimilarBookSuccess extends SimilarBookState {}
