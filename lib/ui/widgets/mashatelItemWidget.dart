import 'package:first_project/ui/pages/data/sectionItemsData.dart';
import 'package:first_project/ui/pages/productsItems.dart';
import 'package:first_project/ui/pages/productItemDetails.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

class MashatelItemWidget extends StatefulWidget {
  Mashatel mashatel;
  MashatelItemWidget(this.mashatel);
  @override
  _ProductItemWidgetState createState() => _ProductItemWidgetState();
}

class _ProductItemWidgetState extends State<MashatelItemWidget> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
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
                widget.mashatel.image,
                fit: BoxFit.cover,
              ),
            ),
            Container(
                margin: EdgeInsets.only(right: 15),
                child: Text(widget.mashatel.title)),
            Expanded(
                child: Container(
                    margin: EdgeInsets.only(right: 7),
                    child: Text(widget.mashatel.object.toString() + " ش "))),
          ],
        ),
      ),
    );
  }
}
