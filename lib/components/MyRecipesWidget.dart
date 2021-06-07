import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Recipe {
  String name;
  String description;
  String heart;

  Recipe(this.name, this.description, this.heart);
}

class MyRecipesWidget extends StatefulWidget {
  List<Recipe> recipes;
  MyRecipesWidget({required this.recipes});

  @override
  MyRecipesWidgetState createState() => MyRecipesWidgetState();
}

class MyRecipesWidgetState extends State<MyRecipesWidget> {
  Widget getRecipe(Recipe recipe) {
    return Container(
      padding: const EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(5.0)),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
              offset: const Offset(1.0, 1.0),
              blurRadius: 1.0,
              color: Color(0xffefefef))
        ],
      ),
      child: Stack(
        children: [
          Row(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 110,
                height: 162,
                color: Color(0x887f7f7f),
              ),
              Expanded(
                child: Container(
                  margin: const EdgeInsets.only(left: 24.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        recipe.name,
                        style: TextStyle(fontSize: 20.0),
                      ),
                      SizedBox(
                        height: 18.0,
                      ),
                      Text(
                        recipe.description,
                        softWrap: true,
                        maxLines: 5,
                        overflow: TextOverflow.ellipsis,
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
          Positioned(
            right: 0.0,
            bottom: 0.0,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.favorite),
                Text(recipe.heart),
              ],
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          children: [
            const Text(
              "My Recipes",
              style: TextStyle(fontSize: 24.0),
            ),
          ],
        ),
        SizedBox(height: 12.0),
        ...widget.recipes.map((e) => getRecipe(e))
      ],
    );
  }
}
