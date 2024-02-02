import 'package:flutter/material.dart';
import 'package:login_screen/scan/screen.dart';

import 'home/home_screen.dart';
import 'home/meto/scan_design.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ScanDesign(),
    );
  }
}