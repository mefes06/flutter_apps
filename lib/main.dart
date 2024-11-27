import 'package:flutter/material.dart';
import 'package:flutter_apps/sign_in_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Net Chat",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.purple,//Normalde arka planı mor yapması lazım ama yapmıyo
      ),
      home: SignInPage(),
    );
  }
}
