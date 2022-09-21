import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:pokedex/pages/home_widgets/home_header_widget.dart';
import 'package:pokedex/pages/home_widgets/home_main_widget.dart';
import 'package:pokedex/pages/home_widgets/home_search_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Future fetch() async {
    var url = 'https://pokeapi.co/api/v2/pokemon/bulbasaur';
    var response = await http.get(Uri.parse(url));
    print(response.body.length);
  }

  returnData() {
    return GestureDetector(
      onTap: () {
        fetch();
      },
      child: Container(
        height: 50,
        width: 50,
        color: Colors.black,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        HomeHeader(),
        HomeSearch(),
        HomeMain()
      ],
    ));
  }
}
