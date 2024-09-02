import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_techblog/component/my_colors.dart';
import 'package:flutter_techblog/view/main_screen.dart';


void main() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: SolidColors.statusBarColor,
      statusBarIconBrightness: Brightness.dark,
      systemNavigationBarColor: SolidColors.systemNavigationBarColor,
      systemNavigationBarIconBrightness: Brightness.dark));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    var textTheme = Theme.of(context).textTheme;
    return MaterialApp(
        title: 'Localizations Sample App',
        localizationsDelegates: const [
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: const [
          Locale('fa', ''), // farsi
        ],
        theme: ThemeData(
          inputDecorationTheme: InputDecorationTheme(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16),
              borderSide: const BorderSide(
                width: 2,
              ),
            ),
            filled: true,
            fillColor: Colors.white,
          ),
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ButtonStyle(
              textStyle: WidgetStateProperty.resolveWith((state) {
                if (state.contains(WidgetState.pressed)) {
                  return textTheme.headlineMedium;
                }
                return textTheme.headlineSmall;
              }),
              backgroundColor: WidgetStateProperty.resolveWith((state) {
                if (state.contains(WidgetState.pressed)) {
                  return SolidColors.dividerColor;
                }
                return SolidColors.primeryColor;
              }),
            ),
          ),
          fontFamily: 'dana',
          brightness: Brightness.light,
          textTheme: const TextTheme(
            headlineSmall: TextStyle(
              fontFamily: "dana",
              fontSize: 16,
              fontWeight: FontWeight.w700,
              color: SolidColors.posterTitle,
            ),
            headlineMedium: TextStyle(
              fontFamily: 'dana',
              fontSize: 14,
              fontWeight: FontWeight.w300,
              color: Colors.white,
            ),
            headlineLarge: TextStyle(
                fontFamily: "dana",
                fontSize: 14,
                color: SolidColors.seeMore,
                fontWeight: FontWeight.w700),
            titleSmall: TextStyle(
              fontFamily: 'dana',
              fontSize: 14,
              fontWeight: FontWeight.w300,
              color: SolidColors.posterSubTitle,
            ),
            titleMedium: TextStyle(
              fontFamily: 'dana',
              fontSize: 14,
              fontWeight: FontWeight.w700,
              color: SolidColors.primeryColor,
            ),
            titleLarge: TextStyle(
              fontFamily: 'dana',
              fontSize: 14,
              fontWeight: FontWeight.w700,
              color: SolidColors.titlesColors,
            ),
            bodySmall: TextStyle(
              fontFamily: 'dana',
              fontSize: 13,
              fontWeight: FontWeight.w300,
            ),
            bodyMedium: TextStyle(
                fontFamily: "dana",
                fontSize: 14,
                color: Color.fromARGB(255, 70, 70, 70),
                fontWeight: FontWeight.w700),
            bodyLarge: TextStyle(
                fontFamily: "dana",
                fontSize: 14,
                color: SolidColors.hintText,
                fontWeight: FontWeight.w700),
          ),
        ),
        debugShowCheckedModeBanner: false,
        home: const MainScreen());
    // home: PodList(size: Size(1000, 1000), textTheme: textTheme, bodyMargin:15));
    // home: BlogList(size: const Size(1000, 1000), textTheme: textTheme, bodyMargin: 15,));
  }
}
