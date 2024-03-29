import 'package:flutter/material.dart';
import 'package:flutter_advanced/presentation/resources/styles/app_themes.dart';
import 'package:flutter_advanced/presentation/resources/switchers/app_router.dart';
import 'package:sizer/sizer.dart';

class MyApp extends StatefulWidget {
  // single instance with named constractor
  const MyApp._internal();
  static const MyApp _instance = MyApp._internal();
  factory MyApp() => _instance;

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context,orientation,devicetype) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: AppTheme.getLight(),
          onGenerateRoute: RouteGenerate.getRoute,
          
        );
      }
    );
  }
}


