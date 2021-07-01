import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RecipeDetailPage extends StatefulWidget {
  @override
  State createState() => RecipeDetailPageState();
}

class RecipeDetailPageState extends State<RecipeDetailPage> {
  @override
  Widget build(BuildContext context) {
    final double _statusBarHeight = MediaQuery.of(context).padding.top;
    final double _height = MediaQuery.of(context).size.height;
    final double _width = MediaQuery.of(context).size.width;
    final double _titleHeight = 48.0;
    final double _contentHeight = _height - _statusBarHeight - _titleHeight;
    return Scaffold(
      body: Container(
        child: Stack(
          children: [
            Column(
              children: [
                Container(
                  height: _height / 2,
                  width: double.infinity,
                  color: Color(0xff8f8f8f),
                ),
              ],
            ),
            Positioned(
              top: (_height / 2) - 25,
              width: _width,
              child: FloatingActionButton(
                backgroundColor: Theme.of(context).primaryColor,
                onPressed: () {},
                child: Icon(Icons.keyboard_arrow_right),
                elevation: 0.1,
              ),
            )
          ],
        ),
      ),
    );
  }
}
