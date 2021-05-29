import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class BottomNavigationWidget extends StatefulWidget {
  int _currentIndex = 0;

  ValueChanged onTap = (index) {};
  BottomNavigationWidget({required this.onTap});

  @override
  _BottomNavigationWidgetState createState() => _BottomNavigationWidgetState();
}

class _BottomNavigationWidgetState extends State<BottomNavigationWidget> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
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
              onPressed: () {},
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
                    size: widget._currentIndex == 0 ? 36 : 32,
                    color: widget._currentIndex == 0 ? Theme.of(context).primaryColor : Colors.black,
                  ),
                  onPressed: () {
                    setState(() {
                      widget._currentIndex = 0;
                      widget.onTap(widget._currentIndex);
                    });
                  },
                ),
                IconButton(
                  icon: Icon(
                    Icons.widgets_outlined,
                    size: widget._currentIndex == 1 ? 36 : 32,
                    color: widget._currentIndex == 1 ? Theme.of(context).primaryColor : Colors.black,
                  ),
                  onPressed: () {
                    setState(() {
                      widget._currentIndex = 1;
                      widget.onTap(widget._currentIndex);
                    });
                  },
                ),
                Container(
                  width: size.width * 0.2,
                ),
                IconButton(
                  icon: Icon(
                    Icons.star_border_outlined,
                    size: widget._currentIndex == 2 ? 36 : 32,
                    color: widget._currentIndex == 2 ? Theme.of(context).primaryColor : Colors.black,
                  ),
                  onPressed: () {
                    setState(() {
                      widget._currentIndex = 2;
                      widget.onTap(widget._currentIndex);
                    });
                  },
                ),
                IconButton(
                  icon: Icon(
                    Icons.person_outline,
                    size: widget._currentIndex == 3 ? 36 : 32,
                    color: widget._currentIndex == 3 ? Theme.of(context).primaryColor : Colors.black,
                  ),
                  onPressed: () {
                    setState(() {
                      widget._currentIndex = 3;
                      widget.onTap(widget._currentIndex);
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
