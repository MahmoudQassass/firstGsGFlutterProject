import 'package:first_project/ui/pages/aboutApp.dart';
import 'package:first_project/ui/pages/contactUs.dart';
import 'package:first_project/ui/pages/login.dart';
import 'package:first_project/ui/pages/register.dart';
import 'package:first_project/ui/widgets/languageWidget.dart';
import 'package:first_project/ui/pages/termsAndConditions.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:localize_and_translate/localize_and_translate.dart';

class MainPageDrawer extends StatefulWidget {
  @override
  _MainPageDrawerState createState() => _MainPageDrawerState();
}

class _MainPageDrawerState extends State<MainPageDrawer> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        DrawerHeader(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.only(bottom: 10),
                child: GestureDetector(
                  onTap: () {
                    Get.to(Register());
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        translator.translate('register'),
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(bottom: 10),
                child: GestureDetector(
                  onTap: () {
                    Get.to(Login());
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        translator.translate('login'),
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          decoration: BoxDecoration(
            color: Colors.green[600],
          ),
        ),
        ListTile(
          title: LanguageWidget(context),
        ),
        ListTile(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(translator.translate('aboutApp'),
                  style: TextStyle(fontSize: 20)),
              Icon(
                Icons.arrow_forward_ios,
                size: 20,
              ),
            ],
          ),
          onTap: () {
            Get.to(AboutApp());
          },
        ),
        Divider(),
        ListTile(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(translator.translate('terms'),
                  style: TextStyle(fontSize: 20)),
              Icon(
                Icons.arrow_forward_ios,
                size: 20,
              ),
            ],
          ),
          onTap: () {
            Get.to(TermsAndConditions());
          },
        ),
        Divider(),
        ListTile(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(translator.translate('contactUs'),
                  style: TextStyle(fontSize: 20)),
              Icon(
                Icons.arrow_forward_ios,
                size: 20,
              ),
            ],
          ),
          onTap: () {
            Get.to(ContactUs());
          },
        ),
      ],
    );
  }
}
