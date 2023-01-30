import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import 'controller/networkcontroller.dart';
import 'language/LocaleString.dart';
import 'ui/route/routegenerator.dart';

Future<void> main() async {
  await GetStorage.init();
  runApp(const MyApp());
}

GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      translations: LocaleString(),
      locale: const Locale('en', 'US'),
      fallbackLocale: const Locale('en', 'US'),
      title: 'Megavpn',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      // theme: ThemeData(
      //   // This is the theme of your application.
      //   //
      //   // Try running your application with "flutter run". You'll see the
      //   // application has a blue toolbar. Then, without quitting the app, try
      //   // changing the primarySwatch below to Colors.green and then invoke
      //   // "hot reload" (press "r" in the console where you ran "flutter run",
      //   // or simply save your changes to "hot reload" in a Flutter IDE).
      //   // Notice that the counter didn't reset back to zero; the application
      //   // is not restarted.
      //   primarySwatch: Colors.blue,
      // ),
      navigatorKey: navigatorKey,
      // home: IncomingSharing(),
      initialRoute: "/",
      onGenerateRoute: RouteGenerator.generateRoute,
      initialBinding: BindingsBuilder(() {
        Get.lazyPut(() => Networkcontroller());
      }),
    );
  }
}
