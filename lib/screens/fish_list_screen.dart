import 'package:critterpedia/blocs/cubit/fishes_cubit.dart';
import 'package:critterpedia/models/fish_model.dart';
import 'package:critterpedia/widgets/fish_row_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FishListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FishesCubit, FishesState>(
      builder: (context, state) {
        if (state is FishesLoaded) {
          final Fishes fishes = state.fishes;
          final List<Fish> fishList = fishes.getList;

          return ListView(
            children: fishList.map((Fish fish) => FishRowWidget(fish)).toList(),
          );
        }

        if (state is FishesLoading) {
          return Center(
            child: Text('Loading'),
          );
        }
        return SizedBox();
      },
    );
  }
}
