import 'package:bloc/bloc.dart';
import 'package:critterpedia/models/fish_model.dart';
import 'package:critterpedia/repositories/fishes_repositories.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

part 'fishes_state.dart';

class FishesCubit extends Cubit<FishesState> {
  FishesCubit(this.repository) : super(FishesInitial());

  FishesRepository repository;

  Future<void> getFishes() async {
    emit(FishesLoading());
    try {
      final Fishes fishes = await repository.getFishes();
      emit(FishesLoaded(fishes: fishes));
    } catch (_) {
      emit(FishesListError(errorMessage: 'Error occured'));
    }
  }
}
