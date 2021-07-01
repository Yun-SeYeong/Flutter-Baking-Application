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
                            "프랑스가 원산지인 과자로, 카스텔라와 비슷한 맛이 난다. 기본적으로는 조개 모양의 틀로 구워서 사진과 같이 조개 모양으로 굽지만, 사용한 모양틀에 따라 다양한 형태가 존재한다. 박력분, 베이킹파우더, 설탕, 계란, 버터를 이용해서 만든다. 계란의 잡내를 없애기 위해 바닐라향이 들어가기도 한다. 레몬즙을 넣어서 만들기도 한다.")
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
