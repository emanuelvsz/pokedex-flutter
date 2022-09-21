import 'package:flutter/material.dart';

class PokePage extends StatefulWidget {
  const PokePage({Key? key}) : super(key: key);

  @override
  State<PokePage> createState() => _PokePageState();
}

class _PokePageState extends State<PokePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Text('Poke Page', style: TextStyle(

        ),)
    );
  }
}