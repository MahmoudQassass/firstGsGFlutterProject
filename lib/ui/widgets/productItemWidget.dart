import 'package:first_project/ui/pages/data/products.dart';
import 'package:first_project/ui/pages/data/sectionItemsData.dart';
import 'package:first_project/ui/pages/productItemDetails.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

class ProductItemWidget extends StatefulWidget {
  Products products;
  ProductItemWidget(this.products);
  @override
  _ProductItemWidgetState createState() => _ProductItemWidgetState();
}

class _ProductItemWidgetState extends State<ProductItemWidget> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.to(ProductItemDetails(
          product: widget.products,
          mashtal: mashatel
              .where((element) => element.id == widget.products.mashtalId)
              .first,
        ));
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
                widget.products.image,
                fit: BoxFit.cover,
              ),
            ),
            Container(
                margin: EdgeInsets.only(right: 15),
                child: Text(widget.products.name)),
            Expanded(
                child: Container(
                    margin: EdgeInsets.only(right: 7),
                    child: Text(widget.products.price.toString() + " ش "))),
          ],
        ),
      ),
    );
  }
}
