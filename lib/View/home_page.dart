import 'package:degital_tasbi/View/widget/castom_appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int num =0;
  int  currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightGreen.shade100,
      
      appBar: PreferredSize(preferredSize: Size.fromHeight(65), child: CastomAppba()),

      body:
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          Column(
            children: [
              Center(
                child: Container(
                  height: 170,
                  width: 170,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [

                      Center(child:
                      Text(
                        "${num}",style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 38.sp
                      ),)),

                    ],
                  ),

                  decoration: BoxDecoration(

                      color: Colors.lightGreen,
                      borderRadius: BorderRadius.circular(100.r),
                      border: Border.all(width: 3.r,color: Colors.blue)

                  ),

                ),
              ),
            ],

          ),
          SizedBox(height: 10.r,),

          Text("Count one by one",style: TextStyle(
              color: Colors.blue,
              fontWeight: FontWeight.bold,
              fontSize: 20.sp

          ),),

          Padding(padding: EdgeInsets.symmetric(vertical: 30.r)),




          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,

            children: [

              SizedBox(
                  height: 40.h,
                  width: 150.w,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.greenAccent,
                          foregroundColor: Colors.black

                      ),
                      onPressed: (){
                        setState(() {

                          if(num <= 0){


                          }else{
                            num = num-1;


                          }

                        });

                      }, child: Text("Sub One"))),
              SizedBox(
                  height: 40.h,
                  width: 150.w,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.greenAccent,
                          foregroundColor: Colors.black

                      ),
                      onPressed: (){

                        setState(() {

                          num = 0;


                        });

                      }, child: Text("Reasat"))),
            ],
          ),

          Padding(padding: EdgeInsets.symmetric(vertical: 15.r)),


          SizedBox(
              height: 45.h,
              width: 150.w,
              child: ElevatedButton(


                  style: ElevatedButton.styleFrom(

                      shape:RoundedRectangleBorder(

                          borderRadius: BorderRadius.circular(10)

                      ) ,

                      backgroundColor: Colors.blue,
                      foregroundColor: Colors.white


                  ),
                  onPressed: (){
                    setState(() {

                      num +=1;
                    });



                  }, child: Text("Add One"))),


        ],

      )
      ,


      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.lightGreen,
      currentIndex: currentIndex,
      onTap: (index) {
        setState(() {
          currentIndex = index;
        });
      },
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.menu),

          label: "Menu",

        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.search),
          label: "Search",


        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.settings),

          label: "settings",
        ),
      ],
    ),

    );
  }
}
