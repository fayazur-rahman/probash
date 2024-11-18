import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:probash_airlines/base/res/styles/app_styles.dart';
import 'package:probash_airlines/screens/all_tickets.dart';

import '../utils/app_routes.dart';

class AppDoubleText extends StatelessWidget {
  const AppDoubleText({super.key, required this.bigText, required this.smallText, required this.func});
  final String bigText;
  final String smallText;
  final VoidCallback func;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(bigText, style: AppStyles.headLineStyle2,),
        InkWell(
          onTap: func,
          child: Text(smallText, style: AppStyles.textStyle.copyWith(
            color: AppStyles.primaryColor
          ),),
        )
      ],
    );
  }
}
