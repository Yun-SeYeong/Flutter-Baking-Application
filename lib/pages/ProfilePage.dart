import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_baking_application/components/MyProfileWidget.dart';
import 'package:flutter_baking_application/components/MyRecipesWidget.dart';

class ProfilePage extends StatefulWidget {
  final auth = FirebaseAuth.instance;

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
                  MyProfileWidget(
                    onLogoutClicked: () {
                      setState(() {
                        widget.auth.signOut();
                        widget.isLogin = false;
                      });
                    },
                  ),
                  SizedBox(
                    height: 28.0,
                  ),
                  MyRecipesWidget(
                    recipes: [
                      Recipe(
                          "madlen",
                          "???????????? ???????????? ?????????, ??????????????? ????????? ?????? ??????. ?????????????????? ?????? ????????? ?????? ????????? ????????? ?????? ?????? ???????????? ?????????, ????????? ???????????? ?????? ???",
                          "549"),
                      Recipe(
                          "madlen",
                          "???????????? ???????????? ?????????, ??????????????? ????????? ?????? ??????. ?????????????????? ?????? ????????? ?????? ????????? ????????? ?????? ?????? ???????????? ?????????, ????????? ???????????? ?????? ???",
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
                        "???????????? ???????????????.",
                        style: TextStyle(
                          fontSize: 24.0,
                        ),
                      ),
                      const SizedBox(height: 24.0),
                      OutlinedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, "/login");
                        },
                        child: Text("?????????"),
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

  @override
  void didUpdateWidget(Widget oldWidget) {
    widget.auth.onAuthStateChanged.first.then((value) {
      print("changed");
      if (value != null && !value.isAnonymous) {
        print(value.email);
        setState(() {
          widget.isLogin = true;
        });
      } else {
        setState(() {
          widget.isLogin = false;
        });
      }
    });
  }
}
