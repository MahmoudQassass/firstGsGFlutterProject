import 'package:first_project/ui/pages/data/products.dart';
import 'package:first_project/ui/pages/data/sectionItemsData.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:localize_and_translate/localize_and_translate.dart';

class ProductItemDetails extends StatelessWidget {
  Products product;
  Mashatel mashtal;
  ProductItemDetails({this.product, this.mashtal});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[100],
      appBar: AppBar(
        backgroundColor: Colors.green[800],
        title: Center(
            child: Text(
          translator.translate('productDetails'),
        )),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              child: Image.asset(
                product.image,
                fit: BoxFit.cover,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                    padding: EdgeInsets.all(10),
                    color: Colors.green[800],
                    child: Text(
                      product.price.toString() + " ش",
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    )),
              ],
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
              child: Text(product.name,
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.green[800])),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
              child: Text(product.description,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            ),
            Container(
              padding: EdgeInsets.all(15),
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    maxRadius: 35,
                    child: SvgPicture.asset(mashtal.image),
                  ),
                  Container(
                    padding: EdgeInsets.all(20),
                    child: Text(
                      mashtal.title,
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
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
