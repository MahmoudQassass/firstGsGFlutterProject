import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

customRasiedButton(
    {double marginTop, String content, double width, String id, Color color}) {
  return Center(
    child: Container(
      margin: EdgeInsets.only(top: marginTop),
      width: width,
      height: 40,
      child: RaisedButton(
          color: color,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(18.0),
          ),
          child: Text(
            content,
            style: TextStyle(color: Colors.white),
          ),
          onPressed: () {
            if (id == "shopRegister") {
              //
            } else if (id == "customerRegister") {
              //
            }
          }),
    ),
  );
}
