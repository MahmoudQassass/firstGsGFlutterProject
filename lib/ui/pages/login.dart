import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/route_manager.dart';
import 'package:localize_and_translate/localize_and_translate.dart';
import 'package:logger/logger.dart';
import 'package:first_project/ui/widgets/customTextFormField.dart';
import 'package:first_project/ui/pages/account.dart';
import 'package:string_validator/string_validator.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  ///1 - create global key for the form
  ///2- write form widget and assign the defined key to it
  ///3- write the textFormField inside form
  ///4- define the validator and save functions inside textFormField
  ///5- excute save and validate functions using key
  GlobalKey<FormState> formKey = GlobalKey();

  // Logger logger = Logger();

  String email;

  String password;

  saveForm() {
    if (isAccepted) {
      bool validateResult = formKey.currentState.validate();
      if (validateResult) {
        formKey.currentState.save();
        Get.offAll(Account());
        //Get.offAll(Account());
        // logger.d('user nama is $email, and password is $password');
      } else {
        return;
      }
    } else {
      // logger.d('you have to accept out terms');
    }
  }

  saveEmail(String value) {
    this.email = value;
  }

  savePassword(String value) {
    this.password = value;
  }

  String validateEmail(String value) {
    if (value == null || value == '') {
      return 'required field';
    } else if (!isEmail(value)) {
      return 'Incorrect Email Syntax';
    }
  }

  String validatePassword(String value) {
    if (value == null || value == '') {
      return 'required field';
    } else if (value.length < 6) {
      return 'password must be longer than 6 symbols';
    }
  }

  int groupValue;
  bool isAccepted = false;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[800],
        title: Center(
            child: Text(
          translator.translate('login'),
        )),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
          child: Column(
            children: [
              Form(
                  key: formKey,
                  child: Column(
                    children: [
                      Text(
                        translator.translate('login'),
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Colors.green[700]),
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      //sasdasdas@casasdasd.dsdasd
                      CustomTextFormField(
                        label: translator.translate('email'),
                        saveFunction: saveEmail,
                        validateFun: validateEmail,
                        hight: 50,
                        lines: 1,
                        icon: Icon(Icons.email),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      CustomTextFormField(
                        label: translator.translate('password'),
                        saveFunction: savePassword,
                        validateFun: validatePassword,
                        hight: 50,
                        lines: 1,
                        icon: Icon(Icons.security),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      CheckboxListTile(
                        title: Text(
                          translator.translate('acceptTerms'),
                        ),
                        value: isAccepted,
                        onChanged: (value) {
                          setState(() {
                            this.isAccepted = value;
                          });
                        },
                      ),
                      RaisedButton(
                          padding: EdgeInsets.symmetric(
                              horizontal: 130, vertical: 7),
                          color: Colors.green[800],
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          child: Text(
                            translator.translate('login'),
                            style: TextStyle(color: Colors.white),
                          ),
                          onPressed: () {
                            saveForm();
                          })
                    ],
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
