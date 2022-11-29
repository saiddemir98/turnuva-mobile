import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get/get.dart';
import 'package:clean/configuration/global_variable.dart';
import 'package:clean/core/theme/app_theme.dart';
import 'package:clean/helper/localization_helper.dart';
import 'package:clean/router/pages.dart';
import 'package:clean/router/routers.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      getPages: AppPages.pages,
      darkTheme: AppTheme.darkTheme,
      theme: AppTheme.lightTheme,
      themeMode: Global.settings.themeMode,
      initialRoute: Routes.INITIAL,
      locale: LocaleString.en,
      popGesture: true,
      translations: LocaleString(),
      supportedLocales: const [
        Locale("tr"),
      ],
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate
      ],
    );
  }
}
