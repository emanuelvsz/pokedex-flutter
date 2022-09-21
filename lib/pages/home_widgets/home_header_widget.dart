import 'package:flutter/material.dart';

class HomeHeader extends StatefulWidget {
  const HomeHeader({Key? key}) : super(key: key);

  @override
  State<HomeHeader> createState() => _HomeHeaderState();
}

class _HomeHeaderState extends State<HomeHeader> {
  @override
  Widget build(BuildContext context) {
    double _height = MediaQuery.of(context).size.height;
    double _width = MediaQuery.of(context).size.width;

    return Container(
      height: _height * 0.2,
      width: _width,
      decoration: BoxDecoration(
        color: Colors.transparent,
      ),
      child: Center(
        child: Text(
          'Pokenemos',
          style: TextStyle(fontFamily: 'Montserrat', fontSize: 30, color: Color(0xFF2E2F58)),
        ),
      ),
    );
  }
}
