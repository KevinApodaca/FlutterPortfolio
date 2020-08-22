import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import '../const.dart';
import 'header.dart';

class Footer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return VStack(
      [
        VxDevice(
          mobile: VStack(
            [
              "Learn more\nContact Me".text.center.white.xl2.make(),
              10.heightBox,
              "kevin.apodaca7@gmail.com"
                  .text
                  .color(Const.accentColor)
                  .semiBold
                  .make()
                  .box
                  .border(color: Const.accentColor)
                  .p16
                  .rounded
                  .make()
            ],
            crossAlignment: CrossAxisAlignment.center,
          ),
          web: HStack(
            [
              "Learn more\nContact Me".text.center.white.xl2.make(),
              10.widthBox,
              "kevin.apodaca7@gmail.com"
                  .text
                  .color(Const.accentColor)
                  .semiBold
                  .make()
                  .box
                  .border(color: Const.accentColor)
                  .p16
                  .rounded
                  .make()
            ],
            alignment: MainAxisAlignment.spaceAround,
          ).w(context.safePercentWidth * 70).scale150().p16(),
        ),
        50.heightBox,
        MyAppBar(),
        10.heightBox,
        "Thank you for viewing, ".richText.semiBold.white.withTextSpanChildren(
            ["Copyright 2020.".textSpan.gray500.make()]).make(),
        10.heightBox,
      ],
      crossAlignment: CrossAxisAlignment.center,
    ).wFull(context).p16();
  }
}
