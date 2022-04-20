import 'package:clock_app/service/service.dart';
import 'package:clock_app/utils/binding/MyBinding.dart';
import 'package:clock_app/utils/theme/theme.dart';
import 'package:clock_app/view/screens/homePage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

 main() async{
  await GetStorage.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: Themes.light,
      darkTheme:  Themes.dark,
      themeMode: ThemeService().theme,
      debugShowCheckedModeBanner: false,
      initialBinding: MyBinding(),
      home: HomePage(),
    );
  }
}


