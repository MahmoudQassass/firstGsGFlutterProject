import 'package:first_project/ui/widgets/customTextField.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/route_manager.dart';
import 'package:first_project/ui/pages/message.dart';
import 'package:localize_and_translate/localize_and_translate.dart';

class Message extends StatelessWidget {
  rightMessageItem({
    String avatar,
    String name,
    String lastMessage,
    String time,
  }) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Row(
        children: [
          CircleAvatar(
            maxRadius: 30,
            minRadius: 10,
            backgroundColor: Colors.white,
            child: SvgPicture.asset('assets/images/test.svg'),
          ),
          Container(
            padding: EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 180,
                  height: 40,
                  alignment: Alignment.center,
                  child: Text(
                    'بارك الله فيك معتصم',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  decoration: BoxDecoration(
                      color: Colors.grey[100],
                      borderRadius: BorderRadius.circular(10)),
                ),
                Container(margin: EdgeInsets.only(top: 5), child: Text('2.23')),
              ],
            ),
          )
        ],
      ),
    );
  }

  leftMessageItem({
    String avatar,
    String name,
    String lastMessage,
    String time,
  }) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            padding: EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Container(
                  width: 250,
                  height: 40,
                  alignment: Alignment.center,
                  child: Text(
                    'هل انتهيت من برمجة الموقع ؟',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  decoration: BoxDecoration(
                      color: Colors.green[300],
                      borderRadius: BorderRadius.circular(10)),
                ),
                Container(margin: EdgeInsets.only(top: 5), child: Text('2.23')),
              ],
            ),
          ),
          CircleAvatar(
            maxRadius: 30,
            minRadius: 10,
            backgroundColor: Colors.white,
            child: SvgPicture.asset('assets/images/test.svg'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomSheet: cutomTextField(
          lines: 1,
          icon: Icon(
            Icons.send,
            size: 30,
            color: Colors.white,
          )),
      backgroundColor: Colors.green[100],
      appBar: AppBar(
        backgroundColor: Colors.green[800],
        title: Center(
            child: Text(
          translator.translate('messeges'),
        )),
      ),
      body: ListView(
        children: [
          rightMessageItem(),
          leftMessageItem(),
          leftMessageItem(),
          rightMessageItem(),
          rightMessageItem(),
          rightMessageItem(),
          rightMessageItem(),
          rightMessageItem(),
        ],
      ),
    );
  }
}
