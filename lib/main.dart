import 'package:flutter/material.dart';
import 'package:go_app/login_reg_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Go App',
      home:LoginReg(),
    );
  }
}
