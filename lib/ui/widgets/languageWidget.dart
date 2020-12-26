import 'package:flutter/material.dart';
import 'package:localize_and_translate/localize_and_translate.dart';

class LanguageWidget extends StatefulWidget {
  BuildContext context;
  LanguageWidget(this.context);
  @override
  _LanguageWidgetState createState() => _LanguageWidgetState();
}

class _LanguageWidgetState extends State<LanguageWidget> {
  Color enColor;
  Color arColor;
  Color arTextColor;
  Color enTextColor;

  _LanguageWidgetState() {
    if (translator.currentLanguage == "en") {
      enColor = Colors.green[800];
      arColor = Colors.white;
      enTextColor = Colors.white;
      arTextColor = Colors.black;
    } else {
      arColor = Colors.green[800];
      enColor = Colors.white;
      enTextColor = Colors.black;
      arTextColor = Colors.white;
    }
  }
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(translator.translate('lang'), style: TextStyle(fontSize: 20)),
        Row(
          children: [
            GestureDetector(
              onTap: () {
                translator.setNewLanguage(
                  widget.context,
                  newLanguage: 'en',
                  remember: true,
                  restart: true,
                );
                translator.restart(context);
                enColor = Colors.green[800];
                arColor = Colors.white;

                enTextColor = Colors.white;
                arTextColor = Colors.black;
              },
              child: Container(
                padding: EdgeInsets.all(5),
                margin: EdgeInsets.all(5),
                child: Text(
                  'EN',
                  style: TextStyle(color: enTextColor),
                ),
                decoration: BoxDecoration(color: enColor, border: Border.all()),
              ),
            ),
            GestureDetector(
              onTap: () {
                translator.restart(context);
                translator.setNewLanguage(
                  widget.context,
                  newLanguage: 'ar',
                  remember: true,
                  restart: true,
                );
                translator.restart(context);
                arColor = Colors.green[800];
                enColor = Colors.white;

                arTextColor = Colors.white;
                enTextColor = Colors.black;
              },
              child: Container(
                padding: EdgeInsets.all(5),
                margin: EdgeInsets.all(5),
                child: Text('AR', style: TextStyle(color: arTextColor)),
                decoration: BoxDecoration(color: arColor, border: Border.all()),
              ),
            ),
          ],
        )
      ],
    );
  }
}
