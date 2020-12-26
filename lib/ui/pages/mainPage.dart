import 'dart:ui';

import 'package:first_project/ui/pages/data/sectionsData.dart';
import 'package:localize_and_translate/localize_and_translate.dart';
import 'data/products.dart';
import 'data/sectionItemsData.dart';
import 'package:flutter/material.dart';
import 'package:first_project/ui/pages/data/products.dart';
import 'package:first_project/ui/widgets/productItemWidget.dart';
import 'package:first_project/ui/widgets/mashatelItemWidget.dart';
import 'package:first_project/ui/widgets/sectionWidget.dart';
import 'package:first_project/ui/widgets/mainPageDrawer.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[100],
      appBar: AppBar(
        backgroundColor: Colors.green[800],
        title: Center(child: Text(translator.translate('mainPage'))),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
                child: Image.asset(
              'assets/images/sections.jpg',
              fit: BoxFit.cover,
            )),
            Container(
              padding: EdgeInsets.all(15),
              child: Text(
                translator.translate('sections'),
                style: TextStyle(
                    color: Colors.green[800],
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              height: 200,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: sections
                    .map((e) => SectionWidget(
                          e,
                        ))
                    .toList(),
              ),
            ),
            Container(
              padding: EdgeInsets.all(15),
              child: Text(
                translator.translate('products'),
                style: TextStyle(
                    color: Colors.green[800],
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              height: 200,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: products
                    .map((e) => ProductItemWidget(
                          e,
                        ))
                    .toList(),
              ),
            ),
            Container(
              padding: EdgeInsets.all(15),
              child: Text(
                translator.translate('farms'),
                style: TextStyle(
                    color: Colors.green[800],
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              height: 200,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: mashatel
                    .map((e) => MashatelItemWidget(
                          e,
                        ))
                    .toList(),
              ),
            ),
          ],
        ),
      ),
      drawer: Drawer(
        child: MainPageDrawer(),
      ),
    );
  }
}
