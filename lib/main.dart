import 'package:flutter/material.dart';
import 'package:pokedex/features/details/home/pages/home_page.dart';
import 'package:pokedex/pages/home_widgets/home_main_widget-test.dart';
import 'package:pokedex/pages/pokemon_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pokedex',
      theme: ThemeData(
        primarySwatch: Colors.red
      ),
      home: HomePage(list: []),
    );
  }
}



