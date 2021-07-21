import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyProfileWidget extends StatefulWidget {
  final Function() onLogoutClicked;
  MyProfileWidget({required this.onLogoutClicked});

  @override
  State<StatefulWidget> createState() => MyProfileWidgetState();

}

class MyProfileWidgetState extends State<MyProfileWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20.0),
        boxShadow: [
          BoxShadow(
            color: Color(0x33efefef),
            offset: Offset(1.0, 1.0),
            spreadRadius: 2.0
          )
        ]
      ),
      child: Stack(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              IconButton(onPressed: widget.onLogoutClicked, icon: Icon(Icons.exit_to_app))
            ],
          ),
          Container(
            padding: const EdgeInsets.all(36.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 86.0,
                      height: 86.0,
                      decoration: const BoxDecoration(
                          color: Color(0x887f7f7f), shape: BoxShape.circle),
                    )
                  ],
                ),
                Container(
                  margin: const EdgeInsets.only(top: 24.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("ysy3350", style: TextStyle(fontSize: 24),),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 24.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          Text("233", style: TextStyle(fontSize: 16.0),),
                          Text("RECIPE", style: TextStyle(fontSize: 12.0),)
                        ],
                      ),
                      Column(
                        children: [
                          Text("233", style: TextStyle(fontSize: 16.0),),
                          Text("LIKE", style: TextStyle(fontSize: 12.0),)
                        ],
                      ),
                      Column(
                        children: [
                          Text("233", style: TextStyle(fontSize: 16.0),),
                          Text("STAR", style: TextStyle(fontSize: 12.0),)
                        ],
                      )
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
