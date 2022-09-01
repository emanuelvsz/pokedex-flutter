import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  Future fetch() async{
    var url = 'https://pokeapi.co/api/v2/pokemon/pikachu';
    var response = await http.get(Uri.parse(url));
    print(response.reasonPhrase);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: GestureDetector(
          onTap: (){fetch();},
          child: Container(
            height: 50,
            width: 50,
            color: Colors.black,
          ),
        )
    );
  }
}