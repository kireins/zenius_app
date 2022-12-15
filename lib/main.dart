import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get_storage/get_storage.dart';
import 'package:zenius_app/service/theme_services.dart';
import 'package:zenius_app/ui/home_page.dart';
import 'package:zenius_app/ui/themes.dart';

Future<void> main() async {
  await GetStorage.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme:Themes.light,
      themeMode: ThemeService().theme,

      home: HomePage(),
    );
  }
}
