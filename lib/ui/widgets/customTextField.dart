import 'package:flutter/material.dart';

cutomTextField(
    {String hint,
    String helper,
    String label,
    Icon icon,
    double hight,
    int lines}) {
  return Container(
    height: hight,
    margin: EdgeInsets.only(top: 5, bottom: 5),
    child: TextFormField(
      maxLines: lines,
      decoration: InputDecoration(
        border: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.green[200])),
        // hintText: hint,
        //  helperText: helper,
        labelText: label,
        prefixIcon: Container(color: Colors.green[500], child: icon),
        prefixText: ' ',
      ),
    ),
  );
}

messageTextField({String hint, String helper, double hight, int lines}) {
  return Container(
    height: hight,
    margin: EdgeInsets.only(top: 5, bottom: 5),
    child: TextField(
      maxLines: lines,
      decoration: InputDecoration(
        border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            borderSide: BorderSide(color: Colors.teal)),
        // hintText: hint,
        //  helperText: helper,
      ),
    ),
  );
}
