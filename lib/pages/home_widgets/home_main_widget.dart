import 'package:flutter/material.dart';

class HomeMain extends StatefulWidget {
  const HomeMain({Key? key}) : super(key: key);

  @override
  State<HomeMain> createState() => _HomeMainState();
}

class _HomeMainState extends State<HomeMain> {
  @override
  Widget build(BuildContext context) {
    double _height = MediaQuery.of(context).size.height;
    double _width = MediaQuery.of(context).size.width;

    List items = [1, 2, 3, 4, 0, 8, 2, 4];

    return Container(
      height: _height * 0.7,
      width: _width,
      child: ListView(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Center(
              child: Wrap(
                direction: Axis.horizontal,
                children: items.map((i) => Container(
                        margin: EdgeInsets.all(8),
                        width: _width * .35,
                        height: _height * .25,
                        decoration: BoxDecoration(
                          color: Colors.amber,
                          borderRadius: BorderRadius.all(
                            Radius.circular(12),
                          ),
                        ),
                        child: Center(
                          child: Text('Item'),
                        ),
                      ),
                    ).toList(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
