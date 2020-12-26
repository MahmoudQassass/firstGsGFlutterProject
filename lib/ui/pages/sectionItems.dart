import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:localize_and_translate/localize_and_translate.dart';
import 'data/sectionItemsData.dart';
import 'package:first_project/ui/widgets/ads.dart';

class SectionItems extends StatefulWidget {
  String dataType;

  SectionItems({this.dataType});
  @override
  _SectionsState createState() => _SectionsState();
}

class _SectionsState extends State<SectionItems> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[100],
      appBar: AppBar(
        title: Center(
          child: Text(
            translator.translate('farms'),
          ),
        ),
        backgroundColor: Colors.green[800],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.separated(
                padding: EdgeInsets.all(8),
                itemCount: mashatel.length,
                itemBuilder: (BuildContext context, int index) {
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Get.toNamed('/productItems',
                              arguments: {'mashatel_id': mashatel[index].id});
                          print(Get.arguments);
                        },
                        child: Row(
                          children: [
                            ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: Container(
                                    width: 100,
                                    height: 70,
                                    child: Image.asset(mashatel[index].image,
                                        fit: BoxFit.cover))),
                            Container(
                              padding: EdgeInsets.only(right: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    mashatel[index].title,
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    mashatel[index].object,
                                    style: TextStyle(
                                        fontSize: 13,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          Icon(Icons.arrow_forward_ios),
                        ],
                      )
                    ],
                  );
                },
                separatorBuilder: (BuildContext context, int index) {
                  Random random = new Random();

                  int randomIndex = random.nextInt(mashatel.length) + 6;
                  return randomIndex < 8 ? ads() : Divider();
                }),
          ),
        ],
      ),
    );
  }
}
