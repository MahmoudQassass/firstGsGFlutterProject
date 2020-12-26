import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:localize_and_translate/localize_and_translate.dart';
import 'data/sectionsData.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Sections extends StatefulWidget {
  @override
  _SectionsState createState() => _SectionsState();
}

class _SectionsState extends State<Sections> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(
          Icons.add,
        ),
        backgroundColor: Colors.green[800],
      ),
      backgroundColor: Colors.green[100],
      appBar: AppBar(
        title: Center(
          child: Text(
            translator.translate('sections'),
          ),
        ),
        backgroundColor: Colors.green[800],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
                height: 150,
                child: Image.asset(
                  'assets/images/sections.jpg',
                  fit: BoxFit.cover,
                )),
            Container(
              padding: EdgeInsets.only(right: 20, top: 15),
              child: Text(
                translator.translate('mainSections'),
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              height: 280.h,
              padding: EdgeInsets.all(8),
              child: ListView.separated(
                itemCount: sections.length,
                itemBuilder: (BuildContext context, int index) {
                  return ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Container(
                      height: 100,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 10,
                              color: Colors.black,
                              spreadRadius: 3)
                        ],
                      ),
                      child: GestureDetector(
                        onTap: () {
                          sections[index].dataTy == "mashatel"
                              ? Get.toNamed('sectionItems')
                              : '';
                        },
                        child: Row(
                          children: [
                            Container(
                                width: 150,
                                height: 100,
                                child: Image.asset(sections[index].image,
                                    fit: BoxFit.cover)),
                            Container(
                                width: 220,
                                height: 80,
                                child: Center(
                                  child: Text(
                                    sections[index].title,
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ))
                          ],
                        ),
                      ),
                    ),
                  );
                },
                separatorBuilder: (BuildContext context, int index) =>
                    const Divider(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
