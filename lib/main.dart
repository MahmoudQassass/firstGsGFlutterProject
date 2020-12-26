import 'package:first_project/ui/pages/register.dart';
import 'package:first_project/ui/pages/registerPages/customerRegister.dart';
import 'package:first_project/ui/pages/registerPages/shopRegister.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get/route_manager.dart';
import 'package:localize_and_translate/localize_and_translate.dart';
import 'ui/pages/seplash.dart';
import 'ui/pages/SectionItems.dart';
import 'ui/pages/sections.dart';
import 'ui/pages/productsItems.dart';
import 'ui/pages/MainPage.dart';
import 'ui/pages/aboutApp.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await translator.init(
    localeDefault: LocalizationDefaultType.device,
    languagesList: <String>['ar', 'en'],
    assetsDirectory: 'assets/langs/',
  );

  runApp(LocalizedApp(
    child: MyApp(),
  ));

//  runApp(MyApp());
}

final double width = 392.72727272727275;
final double height = 759.2727272727273;

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(width, height),
      allowFontScaling: true,
      child: GetMaterialApp(
          localizationsDelegates:
              translator.delegates, // Android + iOS Delegates
          locale: translator.locale, // Active locale
          supportedLocales: translator.locals(),
          getPages: [
            GetPage(name: '/shopRegister', page: () => ShopRegister()),
            GetPage(name: '/customerRegister', page: () => CustomerRegister()),
            GetPage(name: '/editShopInfo', page: () => ShopRegister()),
            GetPage(name: '/sections', page: () => Sections()),
            GetPage(name: '/sectionItems', page: () => SectionItems()),
            GetPage(name: '/productItems', page: () => ProductItems()),
            GetPage(name: '/mainPage', page: () => MainPage()),
            GetPage(name: '/aboutApp', page: () => AboutApp()),
            GetPage(name: '/register', page: () => Register()),
          ],
          home: AppSeplash()),
    );
  }
}
