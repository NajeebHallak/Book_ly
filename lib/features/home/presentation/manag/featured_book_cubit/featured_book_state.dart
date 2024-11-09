part of 'featured_book_cubit.dart';

sealed class FeaturedBookState extends Equatable {
  const FeaturedBookState();

  @override
  List<Object> get props => [];
}

final class FeaturedBookInitial extends FeaturedBookState {}

final class FeaturedBookLoade extends FeaturedBookState {}

final class FeaturedBookSuccess extends FeaturedBookState {}

final class FeaturedBookFailure extends FeaturedBookState {
  final String errorMassage;

  const FeaturedBookFailure(this.errorMassage);
}
