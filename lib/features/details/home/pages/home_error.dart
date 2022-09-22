import 'package:flutter/material.dart';

class HomeError extends StatelessWidget {
  const HomeError({Key? key, required error}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final String error;
    return Scaffold(
      body: Center(
        child: Text('Erro'),
      ),
    );
  }
}