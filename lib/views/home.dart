import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import '../const.dart';
import 'body.dart';
import 'footer.dart';
import 'header.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Const.mainColor,
      child: VStack([
        Header(),
        if (context.isMobile) MyIntro().p16(),
        BodyScreen(),
        Footer(),
      ]).scrollVertical(),
    );
  }
}
