import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:critterpedia/models/fish_model.dart';
import 'package:critterpedia/repositories/fishes_repositories.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

part 'fishes_event.dart';
part 'fishes_state.dart';

class FishesBloc extends Bloc<FishesEvent, FishesState> {
  FishesBloc(this.repository) : super(FishesInitial());

  FishesRepository repository;

  @override
  Stream<FishesState> mapEventToState(
    FishesEvent event,
  ) async* {
    if (event is GetFishesRequested) {
      yield FishesLoading();
      try {
        final Fishes fishes = await repository.getFishes();
        yield FishesLoaded(fishes: fishes);
      } catch (_) {
        yield FishesListError(errorMessage: 'Error occured');
      }
    }
  }
}
