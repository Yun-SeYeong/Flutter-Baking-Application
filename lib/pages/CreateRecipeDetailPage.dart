
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CreateRecipeDetailPage extends StatefulWidget {

  @override
  CreateRecipeDetailPageState createState() => CreateRecipeDetailPageState();
}

class CreateRecipeDetailPageState extends State<CreateRecipeDetailPage> {

  @override
  Widget build(BuildContext context) {
    final double _statusBarHeight = MediaQuery.of(context).padding.top;
    final double _height = MediaQuery.of(context).size.height;
    final double _width = MediaQuery.of(context).size.width;
    final double _titleHeight = 48.0;
    final double _contentHeight = _height - _statusBarHeight - _titleHeight;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: _titleHeight,
              margin:
              EdgeInsets.only(top: _statusBarHeight, left: 32.0, right: 32.0),
              child: Stack(
                children: [
                  Center(
                    child: const Text(
                      "RECIPE",
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.arrow_back_ios),
                  )
                ],
              ),
            ),
            Container(
              color: Color(0xff8f8f8f),
              height: _width,
              child: Center(
                child: OutlinedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [Icon(Icons.add)],
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
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 32.0),
              child: Column(
                children: [
                  const SizedBox(height: 24.0,),
                  TextField(
                    keyboardType: TextInputType.multiline,
                    maxLines: null,
                    minLines: 4,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "설명",
                      labelStyle: TextStyle(
                        color: Theme.of(context).primaryColor,
                        fontSize: 12.0,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            width: 1, color: Theme.of(context).primaryColor),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            width: 1, color: Theme.of(context).primaryColor),
                      ),
                    ),
                  ),
                  const SizedBox(height: 24.0,),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        OutlinedButton(
                          onPressed: () {
                          },
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [Icon(Icons.keyboard_arrow_right)],
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
                      ]
                  ),
                  const SizedBox(height: 24.0,),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}