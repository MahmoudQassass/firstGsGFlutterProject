import 'package:first_project/ui/pages/data/products.dart';
import 'package:first_project/ui/pages/data/sectionsData.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

class SectionWidget extends StatefulWidget {
  SectionData sections;
  SectionWidget(this.sections);
  @override
  _ProductItemWidgetState createState() => _ProductItemWidgetState();
}

class _ProductItemWidgetState extends State<SectionWidget> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        widget.sections.dataTy == "mashatel" ? Get.toNamed('sectionItems') : '';
      },
      child: Container(
        margin: EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              blurRadius: 3,
              color: Colors.black12,
              spreadRadius: 10,
            )
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 120,
              child: Image.asset(
                widget.sections.image,
                fit: BoxFit.cover,
              ),
            ),
            Container(
                margin: EdgeInsets.only(right: 15),
                child: Text(widget.sections.title)),
          ],
        ),
      ),
    );
  }
}
