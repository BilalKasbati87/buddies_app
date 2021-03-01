import 'package:buddies_app/components/page_circle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../constants.dart';

class MainWidget extends StatelessWidget {
  const MainWidget({
    Key key,
    this.backGroundColor,
    this.topImage,
    this.mainImage,
    this.belowHeadingText,
    this.textColor,
    this.logoTextColor,
  }) : super(key: key);

  final Color backGroundColor, textColor, logoTextColor;
  final String topImage, mainImage, belowHeadingText;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backGroundColor,
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(height: kDefaultSize * 3),
              Container(
                child: SvgPicture.asset(
                  topImage,
                ),
              ),
              SizedBox(height: kDefaultSize / 1.5),
              Container(
                child: Text(
                  'Where we create connections',
                  style: TextStyle(
                    color: logoTextColor,
                    fontWeight: FontWeight.w700,
                    height: 1.5,
                    fontSize: 20,
                  ),
                ),
              ),
              // SizedBox(height: kDefaultSize/4),
              Container(
                padding: EdgeInsets.symmetric(horizontal: kDefaultSize),
                child: SvgPicture.asset(
                  mainImage,
                ),
              ),
              SizedBox(height: kDefaultSize / 2),
              Center(
                child: Text(
                  belowHeadingText,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: textColor,
                    fontSize: 48,
                  ),
                ),
              ),
              SizedBox(height: kDefaultSize / 4),
              Container(
                child: Text(
                  'Lorem Ipsum is simply dummy text of the printing and typesetting industry. ',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: textColor,
                    fontSize: 13,
                  ),
                ),
              ),
              SizedBox(height: kDefaultSize / 2),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  PageCircle(
                    activePageColor: kRedColor,
                    isActive: true,
                  ),
                  PageCircle(
                    activePageColor: kYellowColor,
                  ),
                  PageCircle(
                    activePageColor: kYellowColor,
                  ),
                ],
              ),
              SizedBox(height: kDefaultSize / 2),
              Container(
                height: 8,
                width: 147,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(7),
                  color: Color(0XFF3B3B3B).withOpacity(0.59),
                ),
              ),
              SizedBox(height: kDefaultSize),
            ],
          ),
        ),
      ),
    );
  }
}
