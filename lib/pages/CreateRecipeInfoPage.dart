import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CreateRecipeInfoPage extends StatefulWidget {
  String _currentSelectedValue = 'Food';

  @override
  CreateRecipeInfoPageState createState() => CreateRecipeInfoPageState();
}

class CreateRecipeInfoPageState extends State<CreateRecipeInfoPage> {
  @override
  Widget build(BuildContext context) {
    final double _statusBarHeight = MediaQuery.of(context).padding.top;
    final double _height = MediaQuery.of(context).size.height;
    final double _titleHeight = 48.0;
    final double _contentHeight = _height - _statusBarHeight - _titleHeight;
    final _currencies = [
      "Food",
      "Transport",
      "Personal",
      "Shopping",
      "Medical",
      "Rent",
      "Movie",
      "Salary"
    ];

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
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(Icons.arrow_back_ios),
                  )
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 32.0),
              child: Column(
                children: [
                  const SizedBox(
                    height: 32.0,
                  ),
                  Container(
                    child: FormField<String>(
                      builder: (FormFieldState<String> state) {
                        return InputDecorator(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: "카테고리",
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
                          isEmpty: widget._currentSelectedValue == '',
                          child: DropdownButtonHideUnderline(
                            child: DropdownButton<String>(
                              value: widget._currentSelectedValue,
                              isDense: true,
                              onChanged: (String? newValue) {
                                setState(() {
                                  widget._currentSelectedValue = newValue!;
                                  state.didChange(newValue);
                                });
                              },
                              items: _currencies.map((String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(value),
                                );
                              }).toList(),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  const SizedBox(
                    height: 32.0,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "제목",
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
                  const SizedBox(
                    height: 32.0,
                  ),
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
                  const SizedBox(
                    height: 32.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      OutlinedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/create_recipe_detail');
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
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
