import 'package:flutter/material.dart';

class HomeSearch extends StatefulWidget {
  const HomeSearch({Key? key}) : super(key: key);

  @override
  State<HomeSearch> createState() => _HomeSearchState();
}

class _HomeSearchState extends State<HomeSearch> {
  @override
  Widget build(BuildContext context) {
    double _height = MediaQuery.of(context).size.height;
    double _width = MediaQuery.of(context).size.width;

    return Container(
      height: _height * 0.10,
      width: _width,
      decoration: BoxDecoration(
        color: Colors.transparent,
      ),
      child: Container(
        margin: EdgeInsets.only(bottom: _height * 0.04),
        width: _width,
        color: Colors.transparent,
        child: Container(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 27),
            child: Center(
              child: Row(
                children: [
                  Container(
                    width: _width * 0.70,
                    child: TextFormField(
                      maxLines: 1,
                      autocorrect: false,
                      decoration: const InputDecoration(
                          filled: true,
                          fillColor: Color(0xFFEBF3F5),
                          disabledBorder: InputBorder.none,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(12),
                            ),
                          ),
                          labelText: 'Nome ou número',
                          labelStyle: TextStyle(
                            fontFamily: 'Montserrat-Medium',
                            fontSize: 13,
                            color: Color(0xFF808080),
                          ),
                          prefixIcon: Padding(
                            padding: EdgeInsets.symmetric(
                              vertical: 5,
                              horizontal: 15,
                            ),
                            child: const Icon(Icons.search),
                          ),
                          prefixIconColor: Colors.black),
                    ),
                  ),
                  Spacer(),
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(12),
                      ),
                    ),
                    child: TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                        primary: Colors.white,
                        backgroundColor: Color(0xFF5B5F7D), // Background Color
                      ),
                      child: Icon(Icons.format_list_bulleted),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
