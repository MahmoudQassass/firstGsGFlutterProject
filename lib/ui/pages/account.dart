import 'package:flutter/material.dart';
import 'package:first_project/ui/widgets/sellerAccountDrawer.dart';
import 'package:localize_and_translate/localize_and_translate.dart';

class Account extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[100],
      appBar: AppBar(
        backgroundColor: Colors.green[800],
        title: Center(
            child: Text(
          translator.translate('account'),
        )),
      ),
      drawer: Drawer(
        child: SellerAccountDrawer(),
      ),
      body: Container(),
    );
  }
}
