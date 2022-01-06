import 'package:flutter/material.dart';
import 'package:tp_num6/pages/page1.dart';
import 'package:tp_num6/pages/page2.dart';
import 'package:tp_num6/pages/page3.dart';
import 'package:tp_num6/pages/page4.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Magzine Infos', routes: {
      "/": (context) => const MaPremierePage(),
      "/deuxieme": (context) => const MaDeuxiemePage(),
      "/troisieme": (context) => const MatroisiemePage(),
      "/quatrieme": (context) => const MaquatriemePage(),
    });
  }
}
