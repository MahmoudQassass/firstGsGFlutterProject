import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CustomTextFormField extends StatelessWidget {
  Function validateFun;
  Function saveFunction;
  String label;
  Icon icon;
  double hight;
  int lines;
  CustomTextFormField(
      {@required this.label,
      @required this.saveFunction,
      @required this.validateFun,
      this.hight,
      this.lines,
      this.icon});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: hight,
      margin: EdgeInsets.only(top: 5, bottom: 5),
      child: TextFormField(
        validator: (newValue) => validateFun(newValue),
        onSaved: (newValue) => saveFunction(newValue),
        maxLines: lines,
        decoration: InputDecoration(
          border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(50)),
              borderSide: BorderSide(color: Colors.teal)),
          // hintText: hint,
          //  helperText: helper,
          labelText: label,
          prefixIcon: icon,
        ),
      ),
    );
  }
}
