import 'package:flutter/material.dart';
import 'Details.dart';

class Code extends StatefulWidget{
  const Code({Key? key}) : super(key: key);

  @override
  State<Code> createState()=> _Code();

}
class _Code extends State<Code>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title:const Text("code"),
      ),
      backgroundColor:  const Color(0xFF303030),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  margin:const EdgeInsets.all(10),
                  child: Image.asset("Image/IMG-20220914-WA0018.jpg",
                    height: 150,width:double.infinity,fit: BoxFit.fill,)),
              GestureDetector(
                child: Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.symmetric(vertical: 15,),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      border:Border.all(color: Colors.grey,width: 3),
                      color: Colors.black
                  ),
                  child: const Text("Android RoadMap",
                    style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold),),
                ),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context){
                    return const Details(photo1: "Image/IMG-20220914-WA0018.jpg",
                        photo2: "Image/IMG-20220914-WA0013.jpg");
                  }));
                },
              ),
              Container(
                  margin:const EdgeInsets.all(10),
                  child: Image.asset("Image/IMG-20220914-WA0017.jpg",
                    height: 150,width:double.infinity,fit: BoxFit.fill,)),
              GestureDetector(
                child: Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.symmetric(vertical: 15,),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      border:Border.all(color: Colors.grey,width: 3),
                      color: Colors.black
                  ),
                  child: const Text("Ios RoadMap",
                    style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold),),
                ),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context){
                    return const Details(photo1: "Image/IMG-20220914-WA0017.jpg",
                        photo2: "Image/IMG-20220914-WA0014.jpg");
                  }));
                },
              ),
              Container(
                  margin:const EdgeInsets.all(10),
                  child: Image.asset("Image/IMG-20220914-WA0016.jpg",
                    height: 150,width:double.infinity,fit: BoxFit.fill,)),
              GestureDetector(
                child: Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.symmetric(vertical: 20,),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border:Border.all(color: Colors.grey,width: 3),
                      color: Colors.black
                  ),
                  child: const Text("CrossPlatform\nRoadMap",//textAlign:TextAlign.start,
                    style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold),),
                ),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context){
                    return const Details(photo1: "Image/IMG-20220914-WA0016.jpg",
                        photo2: "Image/IMG-20220914-WA0015.jpg");
                  }));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}