import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppLayoutbuilderWidget extends StatelessWidget {
  final int ranadomDivider;
  final double width;
  const AppLayoutbuilderWidget({super.key, required this.ranadomDivider, this.width=3});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      return Flex(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          direction: Axis.horizontal,
          children: List.generate(
              (constraints.constrainWidth() / ranadomDivider).floor(),
              (index) => SizedBox(
                    width: width,
                    height: 1,
                    child: const DecoratedBox(
                        decoration: BoxDecoration(
                      color: Colors.white,
                    )),
                  )));
    });
  }
}
