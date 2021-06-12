import 'package:flutter/material.dart';
import 'package:flutter_baking_application/components/BestRecipesWidget.dart';
import 'package:flutter_baking_application/components/BottomNavigationWidget.dart';
import 'package:flutter_baking_application/pages/ProfilePage.dart';

class DashBoardPage extends StatefulWidget {
  DashBoardPage({Key? key}) : super(key: key);

  @override
  _DashBoardPageState createState() => _DashBoardPageState();
}

class _DashBoardPageState extends State<DashBoardPage> {
  final PageController pageController = PageController(
    initialPage: 0
  );
  @override
  Widget build(BuildContext context) {
    final double _statusBarHeight = MediaQuery.of(context).padding.top;
    return Scaffold(
      body: PageView(
        controller: pageController,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: 48.0,
                margin:
                EdgeInsets.only(top: _statusBarHeight, left: 32.0, right: 32.0),
                child: Stack(
                  children: [
                    Center(
                      child: const Text(
                        "BAKING",
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
              Container(
                padding: EdgeInsets.only(left: 32.0, right: 32.0, top: 36.0),
                child: Column(
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      style: ButtonStyle(backgroundColor:
                      MaterialStateProperty.resolveWith((states) {
                        return Colors.white;
                      })),
                      child: Container(
                        height: 48.0,
                        child: Row(
                          children: [
                            const Icon(
                              Icons.search,
                              color: Color(0xff8f8f8f),
                            ),
                            Container(width: 4.0),
                            Text(
                              "Search...",
                              style: const TextStyle(
                                color: Color(0xff8f8f8f),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 36.0),
                      child: BestRecipesWidget(recipeList: [
                        Recipe("name1"),
                        Recipe("name2"),
                        Recipe("name3"),
                      ]),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 36.0),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                "Categories",
                                style: TextStyle(fontSize: 24.0),
                              ),
                            ],
                          ),
                          Container(
                            padding: EdgeInsets.only(top: 24.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                ElevatedButton(
                                  onPressed: () {},
                                  style: ButtonStyle(
                                    backgroundColor:
                                    MaterialStateProperty.resolveWith((states) {
                                      return Colors.white;
                                    }),
                                    padding: MaterialStateProperty.resolveWith(
                                            (states) => EdgeInsets.all(4.0)),
                                  ),
                                  child: Container(
                                    height: 48.0,
                                    width: 48.0,
                                    child: Image.asset("img/cookie.png"),
                                  ),
                                ),
                                ElevatedButton(
                                  onPressed: () {},
                                  style: ButtonStyle(
                                    backgroundColor:
                                    MaterialStateProperty.resolveWith((states) {
                                      return Colors.white;
                                    }),
                                    padding: MaterialStateProperty.resolveWith(
                                            (states) => EdgeInsets.all(4.0)),
                                  ),
                                  child: Container(
                                    height: 48.0,
                                    width: 48.0,
                                    child: Image.asset("img/bread.png"),
                                  ),
                                ),
                                ElevatedButton(
                                  onPressed: () {},
                                  style: ButtonStyle(
                                    backgroundColor:
                                    MaterialStateProperty.resolveWith((states) {
                                      return Colors.white;
                                    }),
                                    padding: MaterialStateProperty.resolveWith(
                                            (states) => EdgeInsets.all(4.0)),
                                  ),
                                  child: Container(
                                    height: 48.0,
                                    width: 48.0,
                                    child: Image.asset("img/birthday-cake.png"),
                                  ),
                                ),
                                ElevatedButton(
                                  onPressed: () {},
                                  style: ButtonStyle(
                                    backgroundColor:
                                    MaterialStateProperty.resolveWith((states) {
                                      return Colors.white;
                                    }),
                                    padding: MaterialStateProperty.resolveWith(
                                            (states) => EdgeInsets.all(4.0)),
                                  ),
                                  child: Container(
                                    height: 48.0,
                                    width: 48.0,
                                    child: Image.asset("img/pie.png"),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
          Center(
            child: Text("page2"),
          ),
          Center(
            child: Text("page3"),
          ),
          ProfilePage(),
        ],
      ),
      bottomNavigationBar: BottomNavigationWidget(onTap: (index) {
        final pageCurve = Curves.fastOutSlowIn;
        final pageDuration = const Duration(milliseconds: 300);
        print("index $index");
        switch(index) {
          case 0:
            pageController.animateToPage(0, duration: pageDuration, curve: pageCurve);
            break;
          case 1:
            pageController.animateToPage(1, duration: pageDuration, curve: pageCurve);
            break;
          case 2:
            pageController.animateToPage(2, duration: pageDuration, curve: pageCurve);
            break;
          case 3:
            pageController.animateToPage(3, duration: pageDuration, curve: pageCurve);
            break;
        }
      }),
    );
  }
}
