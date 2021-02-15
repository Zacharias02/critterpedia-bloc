import 'package:critterpedia/blocs/bloc/fishes_bloc.dart';
import 'package:critterpedia/repositories/fishes_repositories.dart';
import 'package:critterpedia/screens/fish_list_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() => runApp(CritterpediaApp());

class CritterpediaApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _CritterpediaAppState createState() => _CritterpediaAppState();
}

class _CritterpediaAppState extends State<CritterpediaApp> {
  // define repository and bloc
  FishesRepository fishesRepository;
  FishesBloc fishesBloc;

  @override
  void initState() {
    super.initState();

    // initialize
    fishesRepository = FishesRepository();
    fishesBloc = FishesBloc(fishesRepository);

    // call fetch
    fishesBloc.add(GetFishesRequested());
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<FishesBloc>(
      create: (context) => fishesBloc,
      child: MaterialApp(
        title: 'Critterpedia',
        theme: ThemeData(
          primarySwatch: Colors.lightBlue,
        ),
        home: MainPage(),
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
