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
                if (context.isMobile) 50.heightBox else 10.heightBox,
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
                child: VxResponsive(
                  fallback: const Offstage(),
                  medium:
                      MyIntro().pOnly(left: 120).h(context.percentHeight * 60),
                  large:
                      MyIntro().pOnly(left: 120).h(context.percentHeight * 60),
                ),
              )
            ],
          ).w(context.screenWidth)
        ]),
      ]))
          .size(context.screenWidth, context.percentHeight * 60)
          .color(Const.secondaryColor)
          .make(),
    );
  }
}

class MyIntro extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return VStack(
      [
        [
          "- Introduction -".text.gray500.widest.sm.make(),
          10.heightBox,
          "Developer | Thinker | Maker | Educator \n\nI am a web developer studying Computer Science at the University of Texas at El Paso working as a software developer at JHU APL."
              .text
              .white
              .xl3
              .maxLines(5)
              .make()
              .w(context.isMobile
                  ? context.screenWidth
                  : context.percentWidth * 40),
          20.heightBox,
        ].vStack(),
        RaisedButton(
          onPressed: () {
            launch("https://kevinapodaca.github.io");
          },
          child: "Check out my site".text.white.make(),
          color: Const.accentColor,
          shape: Vx.roundedSm,
          hoverColor: Vx.purple700,
        ).h(60)
      ],
      alignment: MainAxisAlignment.spaceEvenly,
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
      Icon(AntDesign.facebook_square, color: Colors.white).mdClick(() {
        launch('https://www.facebook.com/kevin.apodaca.7');
      }).make(),
      20.widthBox,
    ].hStack();
  }
}
