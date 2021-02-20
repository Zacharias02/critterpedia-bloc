import 'package:critterpedia/screens/fish_list_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(CritterpediaApp());

class CritterpediaApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _CritterpediaAppState createState() => _CritterpediaAppState();
}

class _CritterpediaAppState extends State<CritterpediaApp> {
  // TODO: define repository and bloc here

  @override
  void initState() {
    super.initState();

    // TODO: initialize repository and bloc here

    // TODO: execute event to fetch
  }

  @override
  Widget build(BuildContext context) {
    // TODO: add blocprovider here
    return MaterialApp(
      title: 'Critterpedia',
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
      ),
      home: MainPage(),
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
