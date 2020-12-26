import 'package:first_project/ui/pages/register.dart';
import 'package:flutter/material.dart';
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
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Center(
              child: Container(
                margin: EdgeInsets.only(top: 180),
                child: SvgPicture.asset('assets/images/test.svg'),
              ),
            ),
            Container(
              margin: EdgeInsets.all(30),
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
                    child: Text(translator.translate('skip'), style: textStyle),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
