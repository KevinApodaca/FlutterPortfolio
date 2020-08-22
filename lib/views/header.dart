import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:velocity_x/velocity_x.dart';

import '../const.dart';

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var myName = "Kevin\nApodaca."
        .text
        .white
        .xl6
        .lineHeight(1)
        .size(context.isMobile ? 15 : 20)
        .bold
        .make()
        .shimmer();
    return SafeArea(
      child: VxBox(
          child: VStack([
        ZStack([
          ProfilePicture(),
          Row(
            children: [
              VStack([
                MyAppBar(),
                30.heightBox,
                myName,
                20.heightBox,
                VxBox().color(Const.accentColor).size(60, 10).make(),
                30.heightBox,
                SocialMedia(),
              ]).pSymmetric(
                h: context.percentWidth * 10,
                v: 32,
              ),
              Expanded(
                child: VStack([
                  "- Introduction".text.gray500.widest.sm.make(),
                  10.heightBox,
                  "Developer | Thinker | Maker | Educator \nWeb Developer"
                      .text
                      .white
                      .xl3
                      .maxLines(5)
                      .make()
                      .w(context.isMobile
                          ? context.screenWidth
                          : context.percentWidth * 40),
                  20.heightBox,
                  RaisedButton(
                    onPressed: () {},
                    child: "Check out my site".text.make(),
                  )
                ]),
              )
            ],
          )
        ]),
      ])).make(),
    );
  }
}

class ProfilePicture extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Transform(
      alignment: Alignment.center,
      transform: Matrix4.rotationY(pi * 2),
      child: Image.asset(
        'assets/kevin.png',
        fit: BoxFit.cover,
        height: context.percentHeight * 60,
      ),
    );
  }
}

class MyAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Icon(AntDesign.apple1, size: 50, color: Const.accentColor);
  }
}

class SocialMedia extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return [
      Icon(AntDesign.github, color: Colors.white).mdClick(() {
        launch('https://github.com/KevinApodaca');
      }).make(),
      20.widthBox,
      Icon(AntDesign.linkedin_square, color: Colors.white).mdClick(() {
        launch('https://www.linkedin.com/in/kevinapodaca7/');
      }).make(),
      20.widthBox,
      Icon(AntDesign.github, color: Colors.white).mdClick(() {
        launch('https://github.com/KevinApodaca');
      }).make(),
      20.widthBox,
    ].hStack();
  }
}
