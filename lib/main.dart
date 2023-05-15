import 'package:festival_post_app/utils/utils_routes_page.dart';
import 'package:festival_post_app/views/screen/editing_post_page.dart';
import 'package:festival_post_app/views/screen/festival_select_page.dart';
import 'package:festival_post_app/views/screen/festival_splash_screen.dart';
import 'package:festival_post_app/views/screen/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: allroutes.splashscreen,
      routes: {
        allroutes.homepage: (context) => const homepage(),
        allroutes.festivalselectpage: (context) => const festivalselectpage(),
        allroutes.splashscreen: (context) => const festivalsplashscreen(),
        allroutes.editingpostpage: (context) => const editingpostpage(),
      },
    );
  }
}
