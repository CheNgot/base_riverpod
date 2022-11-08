import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ContainerRectangleWithTriangleBottom extends StatelessWidget {
  Widget? child;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Container(
          width: double.infinity,
          height: 200,
          color: Colors.red,
          child: Center(
            child: Text("Download"),
          ),
        ),
        ClipPath(
          clipper: TriangleClipper(),
          child: Container(
            color: Colors.red,
            height: 10,
            width: 20,
          ),
        )
      ],
    );
  }
}

class TriangleClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(size.width, 0.0);
    path.lineTo(size.width / 2, size.height);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(TriangleClipper oldClipper) => false;
}
