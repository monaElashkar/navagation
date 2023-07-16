import 'package:flutter/material.dart';
import 'code.dart';
class Course extends StatefulWidget{
  const Course({Key? key}) : super(key: key);
  @override
  State<Course> createState()=>_Course();
}
class _Course extends State<Course>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor:  const Color(0xFF303030),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("Image/IMG-20220914-WA0019.jpg",fit: BoxFit.cover,),
            const SizedBox(height: 30,),
            GestureDetector(
              child: Container(
                alignment: Alignment.center,
                margin: const EdgeInsets.symmetric(horizontal: 30),
                padding: const EdgeInsets.symmetric(vertical: 5,),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(45),
                    border:Border.all(color: Colors.grey,width: 3),
                    color: Colors.black
                ),
                child: const Text("COURSE CONTENTS",
                  style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold),),
              ),
              onTap: (){
                Navigator.defaultRouteName;
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return Code();
                }));
              },
            ),

          ],
        ));
  }
}