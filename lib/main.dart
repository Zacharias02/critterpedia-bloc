import 'package:critterpedia/blocs/favorites/favorites_cubit.dart';
import 'package:critterpedia/repositories/fishes_repositories.dart';
import 'package:critterpedia/screens/fish_list_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'blocs/cubit/fishes_cubit.dart';

void main() => runApp(CritterpediaApp());

class CritterpediaApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _CritterpediaAppState createState() => _CritterpediaAppState();
}

class _CritterpediaAppState extends State<CritterpediaApp> {
  // define repository and bloc
  FishesRepository fishesRepository;
  FishesCubit fishesCubit;

  @override
  void initState() {
    super.initState();

    // initialize
    fishesRepository = FishesRepository();
    fishesCubit = FishesCubit(fishesRepository);

    // call fetch
    fishesCubit.getFishes();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<FavoritesCubit>(
      create: (context) => FavoritesCubit(),
      child: BlocProvider<FishesCubit>(
        create: (context) => fishesCubit,
        child: MaterialApp(
          title: 'Critterpedia',
          theme: ThemeData(
            primarySwatch: Colors.lightBlue,
          ),
          home: MainPage(),
        ),
      ),
    );
  }
}

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Critterpedia',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: FishListScreen(),
    );
  }
}
