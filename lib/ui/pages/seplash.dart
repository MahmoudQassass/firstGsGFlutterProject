import 'package:first_project/ui/pages/register.dart';
import 'package:flutter/material.dart';
import 'package:first_project/main.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/route_manager.dart';
import 'package:localize_and_translate/localize_and_translate.dart';

class AppSeplash extends StatefulWidget {
  @override
  _AppSeplashState createState() => _AppSeplashState();
}

class _AppSeplashState extends State<AppSeplash> {
  final TextStyle textStyle = TextStyle(
      fontSize: 20, color: Colors.green[800], fontWeight: FontWeight.bold);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(width, height),
      allowFontScaling: false,
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            height: height.h,
            width: width.w,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.only(top: 50.h),
                  child: SvgPicture.asset('assets/images/test.svg'),
                ),
                Container(
                  padding: EdgeInsets.all(15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Get.to(Register());
                        },
                        child: Text(
                          translator.translate('seplashRegister'),
                          style: textStyle,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Get.toNamed('/mainPage');
                        },
                        child: Text(translator.translate('skip'),
                            style: textStyle),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
