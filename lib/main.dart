import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:navigationbar/detail.dart';
import 'package:navigationbar/navigationMenu.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: "/home",
      getPages: [GetPage(name: "/home", page: () => NavigationBarMe()),
       GetPage(name: "/detail/:id", page: () => const DetailPage())
    ],
      
    );
  }
}
