import 'package:flutter/material.dart';

ads() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.stretch,
    children: [
      Container(
        margin: EdgeInsets.only(top: 15, bottom: 15),
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(10)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                margin: EdgeInsets.only(right: 10),
                child: Text('مساحة اعلانية')),
            Text('نص يستبدل في نفس المسافة'),
          ],
        ),
      ),
      Divider()
    ],
  );
}
