part of 'result_view_cubit.dart';

sealed class ResultSearchState extends Equatable {
  const ResultSearchState();

  @override
  List<Object> get props => [];
}

final class ResultsearchInitial extends ResultSearchState {}

final class ResultSearchLoade extends ResultSearchState {}

final class ResultSearchSuccess extends ResultSearchState {}

final class ResultSearchFailure extends ResultSearchState {
  final String errorMassages;

  const ResultSearchFailure({required this.errorMassages});
}
