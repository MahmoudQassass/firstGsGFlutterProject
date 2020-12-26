import 'package:first_project/ui/pages/registerPages/customerRegister.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/route_manager.dart';
import 'package:localize_and_translate/localize_and_translate.dart';
import 'registerPages/shopRegister.dart';

class Register extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[800],
        title: Center(
          child: Text(
            translator.translate('seplashRegister'),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(top: 50, left: 20, right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child: Text(
                  translator.translate('seplashRegister'),
                  style: TextStyle(fontSize: 20),
                ),
              ),
              Container(
                child: Text(translator.translate('registerDetail'),
                    style: TextStyle(fontSize: 17)),
              ),
              customWidget(
                svgName: 'assets/images/shop.svg',
                content: translator.translate('stores'),
              ),
              customWidget(
                svgName: 'assets/images/user.svg',
                content: translator.translate('customer'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget customWidget({String svgName, String content}) {
    return Center(
      child: GestureDetector(
        key: key,
        onTap: () {
          if (content == "المتاجر" || content == "Stores") {
            Get.toNamed('/shopRegister');
          } else if (content == "العملاء" || content == "Customers") {
            Get.toNamed('/customerRegister');
          }
        },
        child: Container(
          margin: EdgeInsets.only(top: 50),
          width: 160,
          height: 160,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(svgName),
              Text(
                content,
                style: TextStyle(color: Colors.black, fontSize: 25),
              )
            ],
          ),
          decoration: BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(blurRadius: 10, color: Colors.black12, spreadRadius: 10)
            ],
          ),
        ),
      ),
    );
  }
}
