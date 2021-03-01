import 'package:buddies_app/components/main_widget.dart';
import 'package:buddies_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BuddiesApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PageView(
      children: [
        MainWidget(
          backGroundColor: kYellowColor,
          logoTextColor: kGreyColor,
          topImage: 'assets/icons/page1image1.svg',
          mainImage: 'assets/icons/page1image2.svg',
          belowHeadingText: 'Make Friends',
          textColor: Colors.black,
        ),
        MainWidget(
          backGroundColor: kRedColor,
          logoTextColor: kYellowColor,
          topImage: 'assets/icons/page2image1.svg',
          mainImage: 'assets/icons/page2image2.svg',
          belowHeadingText: 'Easy ChatBox',
          textColor: Colors.white,
        ),
        MainWidget(
          backGroundColor: kGreyColor,
          logoTextColor: kYellowColor,
          topImage: 'assets/icons/page3image1.svg',
          mainImage: 'assets/icons/page3image2.svg',
          belowHeadingText: 'Connect AllTime',
          textColor: kYellowColor,
        ),
      ],
    );
  }
}
