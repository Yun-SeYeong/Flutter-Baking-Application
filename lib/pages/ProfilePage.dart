import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_baking_application/components/MyProfileWidget.dart';
import 'package:flutter_baking_application/components/MyRecipesWidget.dart';

class ProfilePage extends StatefulWidget {
  ProfilePage({Key? key, required this.isLogin}) : super(key: key);

  bool isLogin = false;

  @override
  ProfilePageState createState() => ProfilePageState();
}

class ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    final double _statusBarHeight = MediaQuery.of(context).padding.top;
    final double _height = MediaQuery.of(context).size.height;
    final double _titleHeight = 48.0;
    final double _contentHeight = _height - _statusBarHeight - _titleHeight;
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: _titleHeight,
            margin:
                EdgeInsets.only(top: _statusBarHeight, left: 32.0, right: 32.0),
            child: Stack(
              children: [
                Center(
                  child: const Text(
                    "PROFILE",
                    style: TextStyle(fontSize: 18),
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.more_vert),
                )
              ],
            ),
          ),
          Visibility(
            visible: widget.isLogin,
            child: Container(
              height: _contentHeight,
              padding: const EdgeInsets.symmetric(horizontal: 40.0),
              child: ListView(
                physics: BouncingScrollPhysics(),
                children: [
                  MyProfileWidget(),
                  SizedBox(
                    height: 28.0,
                  ),
                  MyRecipesWidget(
                    recipes: [
                      Recipe(
                          "madlen",
                          "프랑스가 원산지인 과자로, 카스텔라와 비슷한 맛이 난다. 기본적으로는 조개 모양의 틀로 구워서 사진과 같이 조개 모양으로 굽지만, 사용한 모양틀에 따라 다",
                          "549"),
                      Recipe(
                          "madlen",
                          "프랑스가 원산지인 과자로, 카스텔라와 비슷한 맛이 난다. 기본적으로는 조개 모양의 틀로 구워서 사진과 같이 조개 모양으로 굽지만, 사용한 모양틀에 따라 다",
                          "549")
                    ],
                  ),
                  SizedBox(
                    height: 100.0,
                  ),
                ],
              ),
            ),
          ),
          Visibility(
            visible: !widget.isLogin,
            child: Column(
              children: [
                const SizedBox(height: 36),
                Container(
                  padding: EdgeInsets.only(left: 32.0, right: 32.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const SizedBox(height: 36.0),
                      Text(
                        "로그인이 필요합니다.",
                        style: TextStyle(
                          fontSize: 24.0,
                        ),
                      ),
                      const SizedBox(height: 24.0),
                      OutlinedButton(
                        onPressed: () {},
                        child: Text("로그인"),
                        style: ButtonStyle(
                          backgroundColor:
                          MaterialStateProperty.resolveWith((states) {
                            return Theme.of(context).primaryColor;
                          }),
                          foregroundColor:
                          MaterialStateProperty.resolveWith((states) {
                            return Colors.white;
                          }),
                        ),
                      ),
                      const SizedBox(height: 24.0),
                    ],
                  ),

                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20.0),
                    boxShadow: [
                      BoxShadow(
                          color: Color(0x33efefef),
                          offset: Offset(1.0, 1.0),
                          spreadRadius: 2.0)
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
