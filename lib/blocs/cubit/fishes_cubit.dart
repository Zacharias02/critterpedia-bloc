import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'fishes_state.dart';

class FishesCubit extends Cubit<FishesState> {
  FishesCubit() : super(FishesInitial());
}
