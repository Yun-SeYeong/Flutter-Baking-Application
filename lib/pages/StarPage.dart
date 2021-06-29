import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Baker {
  String name;
  String star;

  Baker(this.name, this.star);
}

class StarPage extends StatefulWidget {
  List<Baker> bakers;

  StarPage({required this.bakers});

  @override
  StarPageState createState() => StarPageState();
}

class StarPageState extends State<StarPage> {
  Widget getBakerWidget(Baker baker) {
    return Container(
      margin: const EdgeInsets.only(top: 12.0),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(5.0),
          boxShadow: [
            BoxShadow(
                color: Color(0x33efefef),
                offset: Offset(1.0, 1.0),
                spreadRadius: 2.0)
          ]),
      padding: const EdgeInsets.all(24.0),
      child: Stack(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 86.0,
                height: 86.0,
                decoration: const BoxDecoration(
                    color: Color(0x887f7f7f),
                    shape: BoxShape.circle),
              ),
              Expanded(
                child: Container(
                  alignment: Alignment.center,
                  child: Text(
                    baker.name,
                    style: TextStyle(
                      fontSize: 24.0,
                    ),
                  ),
                ),
              )
            ],
          ),
          Positioned(
            bottom: 0.0,
            right: 0.0,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  Icons.favorite,
                  size: 12.0,
                  color: Colors.red,
                ),
                const SizedBox(
                  width: 2.0,
                ),
                Text(baker.star),
              ],
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final double _statusBarHeight = MediaQuery.of(context).padding.top;
    final double _height = MediaQuery.of(context).size.height;
    final double _titleHeight = 48.0;
    final double _contentHeight = _height - _statusBarHeight - _titleHeight;
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Container(
              height: _titleHeight,
              margin: EdgeInsets.only(
                  top: _statusBarHeight, left: 32.0, right: 32.0),
              child: Stack(
                children: [
                  Center(
                    child: const Text(
                      "STAR",
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 40.0),
              child: Container(
                height: _contentHeight,
                child: ListView(
                  physics: BouncingScrollPhysics(),
                  children: [
                    ...widget.bakers.map((e) => getBakerWidget(e)),
                    const SizedBox(
                      height: 120.0,
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
