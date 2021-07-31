import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_baking_application/api/RestClient.dart';
import 'package:flutter_baking_application/pages/CreateRecipeDetailPage.dart';
import 'package:flutter_baking_application/pages/CreateRecipeInfoPage.dart';
import 'package:flutter_baking_application/pages/DashBoardPage.dart';
import 'package:flutter_baking_application/pages/LoginPage.dart';
import 'package:flutter_baking_application/pages/SignUpPage.dart';

void main() {
  final client = RestClient(Dio());

  client.getTasks().then((value) => print(value));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      initialRoute: '/',
      theme: ThemeData(
        primaryColor: Color(0xff5600E8),
        backgroundColor: Colors.white
      ),
      routes: {
        '/': (context) => DashBoardPage(),
        '/login': (context) => LoginPage(),
        '/signup': (context) => SignUpPage(),
        '/create_recipe_info': (context) => CreateRecipeInfoPage(),
        '/create_recipe_detail': (context) => CreateRecipeDetailPage(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Text("test"),
      )
    );
  }
}
