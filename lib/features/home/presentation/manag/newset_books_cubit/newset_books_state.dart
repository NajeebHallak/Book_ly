part of 'newset_books_cubit.dart';

sealed class NewsetBooksState extends Equatable {
  const NewsetBooksState();

  @override
  List<Object> get props => [];
}

final class NewsetBooksInitial extends NewsetBooksState {}

final class NewsetBooksLoade extends NewsetBooksState {}

final class NewsetBooksSucess extends NewsetBooksState {}

final class NewsetBooksFailure extends NewsetBooksState {
  final String errorMassage;
  const NewsetBooksFailure(this.errorMassage);
}
