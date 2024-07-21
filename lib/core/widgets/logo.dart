import 'package:flutter/material.dart';
import 'package:jack_tips_todo/core/theme/app_color.dart';
import 'package:jack_tips_todo/core/utils/app_images_url.dart';

class Logo {
  static Image logo_image = Image.asset(
    AppImagesUrl.logo,
    width: 100,
    height: 100,
  );
  static Widget logo_text = const Text.rich(
    TextSpan(children: [
      TextSpan(
        text: 'My',
        style: TextStyle(
            color: AppColor.whiteColor,
            fontSize: 10,
            fontWeight: FontWeight.bold),
      ),
      TextSpan(
        text: 'Jack',
        style: TextStyle(
            color: AppColor.appColor,
            fontSize: 30,
            decoration: TextDecoration.lineThrough),
      ),
      TextSpan(
        text: 'Todo',
        style: TextStyle(
            color: AppColor.whiteColor,
            fontSize: 20,
            fontWeight: FontWeight.bold),
      ),
    ]),
  );
}
