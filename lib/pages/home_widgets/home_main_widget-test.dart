import 'package:flutter/material.dart';

class Test extends StatefulWidget {
  const Test({Key? key}) : super(key: key);

  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
  @override
  Widget build(BuildContext context) {
    double _height = MediaQuery.of(context).size.height;
    double _width = MediaQuery.of(context).size.width;

    List items = [
      {'nome': 'Emanuel', 'numero': '13'},
      {'nome': 'Dosons', 'numero': '13'},
      {'nome': 'Leonardo', 'numero': '22'},
      {'nome': 'Julia', 'numero': '22'},
      {'nome': 'Micaele', 'numero': '13'},
      {'nome': 'Micaele', 'numero': '13'},
      {'nome': 'Micaele', 'numero': '13'},
      {'nome': 'Micaele', 'numero': '13'},
      {'nome': 'Micaele', 'numero': '13'},
      {'nome': 'Micaele', 'numero': '13'},
      {'nome': 'Micaele', 'numero': '13'},
      {'nome': 'Micaele', 'numero': '13'},
      {'nome': 'Micaele', 'numero': '13'},

    ];

    defineCor(value, index){
      if(value[index]['numero'] == '13'){
        return Colors.red;
      }else{
        return Colors.green;
      }

    }

    Widget returnArr() {
      return GridView.count(
        crossAxisCount: 2,
        children: List.generate(
          items.length,
          (index) {
            return Container(
              margin: EdgeInsets.all(8),
              width: _width * .35,
              decoration: BoxDecoration(
                color: defineCor(items, index),
                borderRadius: BorderRadius.all(
                  Radius.circular(12),
                ),
              ),
              child: Center(
                child: Text(
                  items[index]['nome'],
                  style: TextStyle(
                    color: Colors.black,
                    decoration: TextDecoration.none,
                    fontSize: 18,
                    fontFamily: 'Montserrat-Medium',
                  ),
                ),
              ),
            );
          },
        ),
      );
    }

    return Container(
        height: _height * 0.7,
        width: _width,
        child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 40), child: returnArr()));
  }
}
