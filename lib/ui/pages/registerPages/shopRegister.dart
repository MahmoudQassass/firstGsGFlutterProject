import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:first_project/ui/widgets/customTextField.dart';
import 'package:first_project/ui/widgets/customRaisedButton.dart';
import 'package:get/route_manager.dart';
import 'package:localize_and_translate/localize_and_translate.dart';

class ShopRegister extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[800],
        title: Center(
            child: Text(
          Get.currentRoute == '/shopRegister'
              ? translator.translate('storeRegister')
              : 'تعديل ملف التاجر',
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
                      Get.currentRoute == '/shopRegister'
                          ? translator.translate('storeRegister')
                          : 'تعديل ملف التاجر',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ],
              ),
              Container(
                child: Text(
                    Get.currentRoute == '/shopRegister'
                        ? translator.translate('storeRegisterDetails')
                        : '',
                    style: TextStyle(fontSize: 17)),
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    cutomTextField(
                        label: translator.translate('companyName'),
                        icon: Icon(Icons.store),
                        hight: 40,
                        lines: 1),
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
                    Container(
                      padding: EdgeInsets.all(10),
                      child: Row(
                        children: [
                          Icon(
                            Icons.location_on,
                            color: Colors.green[800],
                          ),
                          Text(
                            translator.translate('selectLocation'),
                          )
                        ],
                      ),
                    ),
                    cutomTextField(
                        label: translator.translate('phone'),
                        icon: Icon(Icons.phone),
                        hight: 40),
                    cutomTextField(
                        label: translator.translate('storeLogo'),
                        icon: Icon(Icons.image),
                        hight: 40),
                    cutomTextField(
                        label: translator.translate('companyType'),
                        icon: Icon(Icons.run_circle),
                        hight: 40),
                    checkForm()
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget checkForm() {
    if (Get.currentRoute == '/shopRegister') {
      return customRasiedButton(
          content: translator.translate('seplashRegister'),
          marginTop: 20,
          width: 350,
          color: Colors.green[800]);
    } else if (Get.currentRoute == '/editShopInfo') {
      return Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('نوعية الخدمات التي تقدمها الشركة'),
            cutomTextField(label: 'نشاط تجاري', icon: Icon(Icons.room_service)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                customRasiedButton(
                    content: translator.translate('Save'),
                    marginTop: 15,
                    width: 150,
                    color: Colors.green[800]),
                customRasiedButton(
                    content: translator.translate('Back'),
                    marginTop: 15,
                    width: 150,
                    color: Colors.grey[800])
              ],
            )
          ],
        ),
      );
    }
  }
}
