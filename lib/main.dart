import 'package:flutter/material.dart';
import 'package:pase_transition_sample/pages/FirstPage.dart';
import 'package:pase_transition_sample/pages/SecondPage.dart';
import 'package:pase_transition_sample/widget/CustomPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Toute Transition',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        // initialRoute: '/first',
        // onGenerateRoute: (route) => onGenerateRoute(route),
        home: FirstPage(),
      );

  // static Route onGenerateRoute(RouteSettings settings) {
  //   switch (settings.name) {
  //     case '/second':
  //       return CustomPageRoute(
  //           child: SecondPage(), settings: settings);
  //     case '/first':
  //     default:
  //       return MaterialPageRoute(
  //           builder: (context) => FirstPage(), settings: settings);
  //   }
  // }
}
