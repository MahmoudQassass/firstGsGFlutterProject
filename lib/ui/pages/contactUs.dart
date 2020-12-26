import 'package:flutter/material.dart';
import 'package:first_project/ui/widgets/customTextField.dart';
import 'package:first_project/ui/widgets/customRaisedButton.dart';
import 'package:localize_and_translate/localize_and_translate.dart';

class ContactUs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[800],
        title: Center(
            child: Text(
          translator.translate('contactUs'),
        )),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(top: 40, left: 20, right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              cutomTextField(
                  label: translator.translate('email'),
                  icon: Icon(Icons.store),
                  hight: 40,
                  lines: 1),
              cutomTextField(
                  label: translator.translate('phone'),
                  icon: Icon(Icons.store),
                  hight: 40,
                  lines: 1),
              cutomTextField(
                  label: translator.translate('contactUsTitle'),
                  icon: Icon(Icons.store),
                  hight: 40,
                  lines: 1),
              Container(
                  padding: EdgeInsets.all(20),
                  child: Text(
                    translator.translate('ContactUsContent'),
                  )),
              messageTextField(hight: 5 * 24.0, lines: 5),
              customRasiedButton(
                  content: translator.translate('send'),
                  marginTop: 30,
                  width: 350,
                  color: Colors.green[800])
            ],
          ),
        ),
      ),
    );
  }
}
