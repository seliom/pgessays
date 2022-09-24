//import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/screens/category_essays_screen.dart';
import 'package:flutter_complete_guide/screens/essay_screen.dart';
import 'package:flutter_complete_guide/screens/tabs_screen.dart';
import 'package:flutter_complete_guide/splash.dart';

import 'screens/categories_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Paul Graham\'s Essays',
      debugShowCheckedModeBanner: false,

      theme: ThemeData(
          primarySwatch: Colors.orange,
          accentColor: Colors.amber,
          canvasColor: Color.fromRGBO(255, 254, 229, 1),
          fontFamily: 'Raleway',
          textTheme: ThemeData.light().textTheme.copyWith(
              body1: TextStyle(color: Colors.blue
                  //Color.fromRGBO(118, 180, 221, 1),
                  ),
              body2: TextStyle(
                color: Color.fromRGBO(20, 51, 51, 1),
              ),
              title: TextStyle(fontSize: 22, fontFamily: 'RobotoCondensed'))),
      initialRoute: '/splash-screen',
      //home: CategoriesScreen(),
      routes: {
        '/splash-screen': (ctx) => SplashScreen(),
        '/': (ctx) => CategoriesScreen(),
        '/tabs-screen': (ctx) => TabsScreen(),
        CategoryEssaysScreen.routeName: (ctx) => CategoryEssaysScreen(),
        EssayScreen.routeName: (ctx) => EssayScreen()
      },
      onUnknownRoute: (settings) {
        MaterialPageRoute(builder: (ctx) => CategoriesScreen());
      },
    );
  }
}

// html.window.onBeforeUnload.listen((event) async { Navigator.pushNamed(context, 'charities'); });