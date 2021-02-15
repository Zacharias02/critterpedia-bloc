part of 'fishes_bloc.dart';

@immutable
abstract class FishesEvent extends Equatable {
  @override
  List<Object> get props => [];
}

class GetFishesRequested extends FishesEvent {}
