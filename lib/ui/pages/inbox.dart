import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/route_manager.dart';
import 'package:first_project/ui/pages/message.dart';
import 'package:localize_and_translate/localize_and_translate.dart';

class Inbox extends StatelessWidget {
  inboxItem({
    String avatar,
    String name,
    String lastMessage,
    String time,
  }) {
    return GestureDetector(
      onTap: () {
        Get.to(Message());
      },
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 1, horizontal: 15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                CircleAvatar(
                  maxRadius: 30,
                  minRadius: 10,
                  backgroundColor: Colors.white,
                  child: SvgPicture.asset('assets/images/user.svg'),
                ),
                Container(
                  padding: EdgeInsets.all(15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'هشام محمد',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text('السلام عليكم اخ معتصم'),
                    ],
                  ),
                )
              ],
            ),
            Text('21 jun')
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          inboxItem(),
          Divider(),
          inboxItem(),
          Divider(),
          inboxItem(),
          Divider(),
          inboxItem(),
          Divider(),
          inboxItem(),
          Divider(),
        ],
      ),
    );
  }
}
