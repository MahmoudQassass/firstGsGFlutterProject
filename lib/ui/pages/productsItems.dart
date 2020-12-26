import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:localize_and_translate/localize_and_translate.dart';
import 'data/products.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProductItems extends StatefulWidget {
  @override
  _ProductItemsState createState() => _ProductItemsState();
}

class _ProductItemsState extends State<ProductItems> {
  List items = products
      .where((e) => e.mashtalId == Get.arguments['mashatel_id'])
      .toList();

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
        backgroundColor: Colors.green[800],
        title: Center(
            child: Text(
          translator.translate('products'),
        )),
      ),
      body: Container(
          height: 590.h,
          margin: EdgeInsets.all(15),
          child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                childAspectRatio: 1,
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 20,
              ),
              itemCount: items.length,
              itemBuilder: (context, index) {
                return productWidget(index: index);
              })),
    );
  }

  productWidget({int index}) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(15),
      child: Container(
        height: 700.h,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              child: Image.asset(
                items[index].image,
                fit: BoxFit.cover,
              ),
            ),
            Container(
                margin: EdgeInsets.only(right: 15),
                child: Text(items[index].name)),
            Expanded(
                child: Container(
                    margin: EdgeInsets.only(right: 7),
                    child: Text(items[index].price.toString() + " ش "))),
          ],
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
          boxShadow: [
            BoxShadow(blurRadius: 10, color: Colors.black, spreadRadius: 30)
          ],
        ),
      ),
    );
  }
}
