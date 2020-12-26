import 'package:first_project/ui/pages/aboutApp.dart';
import 'package:first_project/ui/pages/contactUs.dart';
import 'package:first_project/ui/pages/inbox.dart';
import 'package:first_project/ui/widgets/languageWidget.dart';
import 'package:first_project/ui/pages/mainPage.dart';
import 'package:first_project/ui/pages/productsItems.dart';
import 'package:first_project/ui/pages/sections.dart';
import 'package:first_project/ui/pages/termsAndConditions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/route_manager.dart';
import 'package:localize_and_translate/localize_and_translate.dart';

class SellerAccountDrawer extends StatefulWidget {
  @override
  _SellerAccountDrawerState createState() => _SellerAccountDrawerState();
}

class _SellerAccountDrawerState extends State<SellerAccountDrawer> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        DrawerHeader(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                child: CircleAvatar(
                  backgroundColor: Colors.green[50],
                  maxRadius: 45,
                  minRadius: 10,
                  child: SvgPicture.asset('assets/images/test.svg'),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                child: Text(
                  'مشتل نايف',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                child: Text(
                  '(' + translator.translate('farm') + ' )',
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              )
            ],
          ),
          decoration: BoxDecoration(
            color: Colors.green[600],
          ),
        ),
        Expanded(
          flex: 10,
          child: Column(
            children: [
              ListTile(
                title: LanguageWidget(context),
              ),
              ListTile(
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(translator.translate('messeges'),
                        style: TextStyle(fontSize: 20)),
                    Icon(
                      Icons.arrow_forward_ios,
                      size: 20,
                    ),
                  ],
                ),
                onTap: () {
                  Get.to(Inbox());
                },
              ),
              Divider(),
              ListTile(
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(translator.translate('dashboard'),
                        style: TextStyle(fontSize: 20)),
                    Icon(
                      Icons.arrow_forward_ios,
                      size: 20,
                    ),
                  ],
                ),
                onTap: () {
                  Get.to(Sections());
                },
              ),
              Divider(),
              ListTile(
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(translator.translate('products'),
                        style: TextStyle(fontSize: 20)),
                    Icon(
                      Icons.arrow_forward_ios,
                      size: 20,
                    ),
                  ],
                ),
                onTap: () {
                  Get.to(ProductItems(), arguments: {'mashatel_id': 0});
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
          ),
        ),
        Expanded(
            flex: 2,
            child: GestureDetector(
              onTap: () {
                Get.offAll(MainPage());
              },
              child: Container(
                padding: EdgeInsets.only(right: 70),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(Icons.exit_to_app_outlined),
                    Container(
                      child: Text(translator.translate('logout'),
                          style: TextStyle(
                            fontSize: 20,
                          )),
                    ),
                  ],
                ),
              ),
            )),
        Expanded(
            flex: 2,
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GestureDetector(
                    onTap: () {
                      Get.to(AboutApp());
                    },
                    child: Container(
                      child: Text(translator.translate('aboutApp'),
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold)),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.to(TermsAndConditions());
                    },
                    child: Container(
                      child: Text(translator.translate('terms'),
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold)),
                    ),
                  ),
                ],
              ),
            )),
      ],
    );
  }
}
