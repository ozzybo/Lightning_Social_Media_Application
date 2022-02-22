import 'package:flutter/material.dart';
import 'package:lightning_app/pages/home_page.dart';

void main() => runApp(const LightningApp());

class LightningApp extends StatelessWidget {
  const LightningApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

