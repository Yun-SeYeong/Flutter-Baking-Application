import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class BottomNavigationWidget extends StatefulWidget {

  final ValueChanged onTap;
  final Function() onFloatingButtonClicked;
  final PageController pageController;

  BottomNavigationWidget({
    Key? key,
    required this.onTap,
    required this.onFloatingButtonClicked,
    required this.pageController,
  }) : super(key: key);

  @override
  _BottomNavigationWidgetState createState() => _BottomNavigationWidgetState();
}

class _BottomNavigationWidgetState extends State<BottomNavigationWidget> {
  final pageCurve = Curves.fastOutSlowIn;
  final pageDuration = const Duration(milliseconds: 300);

  void moveToPage(int index) {
    widget.pageController.animateToPage(index,
        duration: pageDuration, curve: pageCurve,);
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    widget.pageController.addListener(() {
      setState(() {
      });
    });
    return Container(
      width: size.width,
      height: 80,
      child: Stack(
        children: [
          CustomPaint(
            size: Size(size.width, 80),
            painter: _BNCustomPainter(),
          ),
          Center(
            heightFactor: 0.4,
            child: FloatingActionButton(
              backgroundColor: Theme.of(context).primaryColor,
              onPressed: widget.onFloatingButtonClicked,
              child: Icon(Icons.add),
              elevation: 0.1,
            ),
          ),
          Container(
            width: size.width,
            height: 80,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  icon: Icon(
                    Icons.home_outlined,
                    color: (widget.pageController.page??0).round() == 0
                        ? Theme.of(context).primaryColor
                        : Colors.black,
                  ),
                  iconSize: (widget.pageController.page??0).round() == 0 ? 36 : 32,
                  onPressed: () {
                    setState(() {
                      moveToPage(0);
                    });
                  },
                ),
                IconButton(
                  icon: Icon(
                    Icons.widgets_outlined,
                    color: (widget.pageController.page??0).round() == 1
                        ? Theme.of(context).primaryColor
                        : Colors.black,
                  ),
                  iconSize: (widget.pageController.page??0).round() == 1 ? 36 : 32,
                  onPressed: () {
                    setState(() {
                      moveToPage(1);
                    });
                  },
                ),
                Container(
                  width: size.width * 0.2,
                ),
                IconButton(
                  icon: Icon(
                    Icons.star_border_outlined,
                    color: (widget.pageController.page??0).round() == 2
                        ? Theme.of(context).primaryColor
                        : Colors.black,
                  ),
                  iconSize: (widget.pageController.page??0).round() == 2 ? 36 : 32,
                  onPressed: () {
                    setState(() {
                      moveToPage(2);
                    });
                  },
                ),
                IconButton(
                  icon: Icon(
                    Icons.person_outline,
                    color: (widget.pageController.page??0).round() == 3
                        ? Theme.of(context).primaryColor
                        : Colors.black,
                  ),
                  iconSize: (widget.pageController.page??0).round() == 3 ? 36 : 32,
                  alignment: Alignment.center,
                  onPressed: () {
                    setState(() {
                      moveToPage(3);
                    });
                  },
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class _BNCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = Colors.white
      ..style = PaintingStyle.fill;
    Path path = Path()..moveTo(0, 0);
    path.lineTo(size.width * 0.34, 0);
    path.quadraticBezierTo(size.width * 0.38, 0, size.width * 0.38, 10);
    path.arcToPoint(Offset(size.width * 0.62, 10),
        radius: Radius.circular(5.0), clockwise: false);
    path.quadraticBezierTo(size.width * 0.62, 0, size.width * 0.66, 0);
    path.lineTo(size.width, 0);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.close();
    canvas.drawShadow(path, Colors.grey.withAlpha(50), 2.0, false);
    canvas.drawPath(path, paint);
    // canvas.drawShadow(path, Colors.grey[900]!, 2.0, false);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
