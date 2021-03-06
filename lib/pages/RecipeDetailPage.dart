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
            Container(
              child: Column(
                children: [
                  Container(
                    height: _height / 2,
                    width: double.infinity,
                    color: Color(0xff8f8f8f),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 40.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 24.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Container(
                                  height: 24.0,
                                  width: 24.0,
                                  decoration: BoxDecoration(
                                      color: Color(0xff8f8f8f),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(12.0))),
                                ),
                                SizedBox(
                                  width: 12.0,
                                ),
                                Text("ysy3350"),
                              ],
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.favorite_border,
                                  color: Colors.red,
                                ),
                                SizedBox(
                                  width: 12.0,
                                ),
                                Text("254")
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 12.0,
                        ),
                        Text(
                          "Madlan",
                          style: TextStyle(fontSize: 42),
                        ),
                        SizedBox(
                          height: 12.0,
                        ),
                        Text(
                            "???????????? ???????????? ?????????, ??????????????? ????????? ?????? ??????. ?????????????????? ?????? ????????? ?????? ????????? ????????? ?????? ?????? ???????????? ?????????, ????????? ???????????? ?????? ????????? ????????? ????????????. ?????????, ??????????????????, ??????, ??????, ????????? ???????????? ?????????. ????????? ????????? ????????? ?????? ??????????????? ??????????????? ??????. ???????????? ????????? ???????????? ??????.")
                      ],
                    ),
                  )
                ],
              ),
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
            ),
          ],
        ),
      ),
    );
  }
}
