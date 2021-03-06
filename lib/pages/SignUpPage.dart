
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {

  @override
  SignUpPageState createState() => SignUpPageState();
}

class SignUpPageState extends State<StatefulWidget> {

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
                    "SIGNUP",
                    style: TextStyle(fontSize: 18),
                  ),
                ),
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(Icons.keyboard_arrow_left),
                ),

              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 40.0),
            child: Column(
              children: [
                SizedBox(
                  height: 24.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("BAKING",
                      style: TextStyle(
                          fontSize: 48,
                          color: Colors.black54
                      ),)
                  ],
                ),
                SizedBox(
                  height: 48.0,
                ),
                TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "ID",
                      labelStyle: TextStyle(
                        color: Theme.of(context).primaryColor,
                        fontSize: 12.0,
                      ),
                      hintText: "???????????? ??????????????????",
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 1, color: Theme.of(context).primaryColor),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 1, color: Theme.of(context).primaryColor),
                      )
                  ),
                ),
                SizedBox(
                  height: 18.0,
                ),
                TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "Password",
                      labelStyle: TextStyle(
                        color: Theme.of(context).primaryColor,
                        fontSize: 12.0,
                      ),
                      hintText: "??????????????? ??????????????????",
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 1, color: Theme.of(context).primaryColor),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 1, color: Theme.of(context).primaryColor),
                      )
                  ),
                ),
                SizedBox(
                  height: 18.0,
                ),
                TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "Password",
                      labelStyle: TextStyle(
                        color: Theme.of(context).primaryColor,
                        fontSize: 12.0,
                      ),
                      hintText: "????????? ??????????????????",
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 1, color: Theme.of(context).primaryColor),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 1, color: Theme.of(context).primaryColor),
                      )
                  ),
                ),
                SizedBox(
                  height: 18.0,
                ),
                OutlinedButton(
                  onPressed: () {
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("????????????")
                    ],
                  ),
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
              ],
            ),
          )
        ],
      ),
    );
  }
}