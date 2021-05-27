import 'package:flutter/cupertino.dart';

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
                  fontSize: 18.0,
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
                return Container(
                  width: 120,
                  height: 180,
                  padding: const EdgeInsets.all(12.0),
                  alignment: Alignment.bottomLeft,
                  margin: const EdgeInsets.only(
                      right: 24.0, top: 12.0, bottom: 12.0),
                  decoration: const BoxDecoration(
                    color: Color(0xffc8c8c8),
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
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
