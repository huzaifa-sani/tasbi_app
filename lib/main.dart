import 'package:degital_tasbi/View/home_page.dart';
import 'package:degital_tasbi/View/widget/castom_appbar.dart';
import 'package:flutter/material.dart';
void main (){

  runApp(Myapps());


}


class Myapps extends StatelessWidget {
  const Myapps({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Digital Tasbi",
      home: HomePage(),

    );
  }
}

