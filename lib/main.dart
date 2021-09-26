// import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:rest/app/modules/home/views/home_view.dart';
import 'package:rest/app/theme.dart';
//import 'package:device_preview/device_preview.dart';
import 'app/routes/app_pages.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  runApp(
    // DevicePreview(
    // enabled: !kReleaseMode,
    // builder: (context) =>
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Application",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
      theme: myTheme(),
      localizationsDelegates: [
        GlobalCupertinoLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: [
        const Locale('ar', ''), // English, no country code
        const Locale('en', ''), // Arabic, no country code
      ],
      locale: Locale("fa", "IR"),
      home: HomeView(),
    ),
    // )
  );
}
