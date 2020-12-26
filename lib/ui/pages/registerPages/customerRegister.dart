import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:first_project/ui/widgets/customTextField.dart';
import 'package:first_project/ui/widgets/customRaisedButton.dart';
import 'package:localize_and_translate/localize_and_translate.dart';

class CustomerRegister extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[800],
        title: Center(
            child: Text(
          translator.translate('customerRegister'),
        )),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(top: 10, left: 20, right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Icon(Icons.store),
                  Container(
                    child: Text(
                      translator.translate('customerRegister'),
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ],
              ),
              Container(
                child: Text(translator.translate('customerRegisterDetails'),
                    style: TextStyle(fontSize: 17)),
              ),
              Container(
                margin: EdgeInsets.only(top: 50),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    cutomTextField(
                        label: translator.translate('userName'),
                        icon: Icon(Icons.person),
                        hight: 40,
                        lines: 1),
                    cutomTextField(
                        label: translator.translate('password'),
                        icon: Icon(Icons.security),
                        hight: 40,
                        lines: 1),
                    cutomTextField(
                        label: translator.translate('email'),
                        icon: Icon(Icons.email),
                        hight: 40,
                        lines: 1),
                    cutomTextField(
                        label: translator.translate('phone'),
                        icon: Icon(Icons.phone),
                        hight: 40,
                        lines: 1),
                    customRasiedButton(
                        content: translator.translate('seplashRegister'),
                        marginTop: 50,
                        width: 350,
                        color: Colors.green[800])
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
