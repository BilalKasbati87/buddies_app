import 'package:flutter/material.dart';

import '../constants.dart';

class PageCircle extends StatelessWidget {
  const PageCircle({
    Key key,
    this.activePageColor,
    this.isActive = false,
  }) : super(key: key);
  final Color activePageColor;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: kDefaultSize / 4),
      height: 8,
      width: 8,
      decoration: BoxDecoration(
        color: isActive ? activePageColor : Colors.white,
        shape: BoxShape.circle,
      ),
    );
  }
}
