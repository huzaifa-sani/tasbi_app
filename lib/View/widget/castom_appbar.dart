import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class CastomAppba extends StatelessWidget {
  const CastomAppba({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(

      height: 65.h,
      width: double.maxFinite.w,
      
      child: Row(

        children: [

          GestureDetector(
              onTap: (){


              },
              child: Icon(Icons.menu)),

          Expanded(child: Text("Digital Tasbi Apps",textAlign: TextAlign.center,style: TextStyle(color: Colors.black,fontSize: 20.sp,fontWeight: FontWeight.bold),))


        ],
      ),

      decoration: BoxDecoration(

        color: Colors.lightGreen,
        border: Border.all(color: Colors.blue,width: 3.r),
        borderRadius: BorderRadius.only(
          bottomRight: Radius.circular(20.r),
          bottomLeft: Radius.circular(20.r)
          
          

        )

      ),
    );
  }
}
