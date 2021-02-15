part of 'fishes_cubit.dart';

@immutable
abstract class FishesState extends Equatable {
  @override
  List<Object> get props => [];
}

class FishesInitial extends FishesState {}

class FishesInitState extends FishesState {}

class FishesLoading extends FishesState {}

class FishesLoaded extends FishesState {
  FishesLoaded({this.fishes});
  final Fishes fishes;

  @override
  List<Object> get props => [fishes];
}

class FishesListError extends FishesState {
  FishesListError({this.errorMessage});
  final String errorMessage;

  @override
  List<Object> get props => [errorMessage];
}
