import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class BodyScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Vx.purple700,
      child: Flex(
        direction: context.isMobile ? Axis.vertical : Axis.horizontal,
        children: [
          "Freelance Web Developer,\n"
              .richText
              .withTextSpanChildren(
                ["Project showcase.".textSpan.yellow400.make()],
              )
              .xl4
              .white
              .make(),
          20.widthBox,
          Expanded(
            child: VxSwiper(
              items: [
                "Fantasker"
                    .text
                    .bold
                    .white
                    .xl
                    .wide
                    .center
                    .make()
                    .box
                    .p8
                    .roundedLg
                    .alignCenter
                    .square(200)
                    .neumorphic(
                        color: Vx.purple700,
                        elevation: 5.0,
                        curve: VxCurve.flat)
                    .make()
                    .p16(),
              ],
            ),
          )
        ],
      ).p64().h(context.isMobile ? 500 : 300),
    );
  }
}
