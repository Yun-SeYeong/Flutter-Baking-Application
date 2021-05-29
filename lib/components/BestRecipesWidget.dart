import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Recipe {
  String name;

  Recipe(this.name);
}

class BestRecipesWidget extends StatefulWidget {
  List<Recipe> recipeList;

  BestRecipesWidget({required this.recipeList});

  @override
  _BestRecipesWidgetState createState() => _BestRecipesWidgetState();
}

class _BestRecipesWidgetState extends State<BestRecipesWidget> {

  Widget _recipeItemWidget(index) {
    return Container(
      width: 120,
      height: 180,
      margin: const EdgeInsets.only(
          right: 24.0, top: 12.0, bottom: 12.0),
      child: InkWell(
        onTap: () {

        },
        child: Container(
          width: 120,
          height: 180,
          padding: const EdgeInsets.all(12.0),
          alignment: Alignment.bottomLeft,
          decoration: const BoxDecoration(
            color: Color(0x887f7f7f),
            borderRadius: const BorderRadius.all(
              const Radius.circular(5.0),
            ),
          ),
          child: Text(
            widget.recipeList[index].name,
            style: const TextStyle(
              color: const Color(0xffffffff),
              fontSize: 18.0,
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 246,
      child: Column(
        children: [
          Row(
            children: [
              Text(
                "BEST",
                style: TextStyle(
                  fontSize: 24.0,
                ),
              ),
            ],
          ),
          Expanded(
            child: ListView.builder(
              itemCount: widget.recipeList.length,
              scrollDirection: Axis.horizontal,
              physics: BouncingScrollPhysics(),
              itemBuilder: (BuildContext context, int index) {
                return _recipeItemWidget(index);
              },
            ),
          ),
        ],
      ),
    );
  }
}