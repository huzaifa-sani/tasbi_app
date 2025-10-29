import 'package:degital_tasbi/View/widget/castom_appbar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // ata amer apps bar
      appBar: AppBar(
        title: Center(child: Text("Digital Tasbi",style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold),)),
        backgroundColor: Colors.green.shade200,




      ),

      body: Column(

        children: [





        ],

      ),
      

      //bottomNavigationBar: BottomNavigationBar(items: ),
    );
  }
}
