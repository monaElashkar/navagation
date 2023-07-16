import 'package:flutter/material.dart';
class Details extends StatefulWidget{
  const Details({Key? key,  required this.photo1, required this.photo2}) : super(key: key) ;
  final String photo1;
  final String photo2;
  @override
  State<Details> createState()=>_Details();
}

class _Details extends State<Details>{
  @override
  Widget build(BuildContext context) {
     return Scaffold(
       backgroundColor:  const Color(0xFF303030),
       appBar: AppBar(
         backgroundColor: Colors.black,
         title: const Text("Details"),
       ),
       body: Column(
         children: [
           Expanded(
             child: SizedBox(
               height: 100,
                width: double.infinity,
                 child: Image.asset(widget.photo1,fit: BoxFit.fill,)),
           ),
           Expanded(
             child: SizedBox(
                 height: 100,
                 width: double.infinity,
                 child: Image.asset(widget.photo2,fit: BoxFit.fill,)),
           ),         ],
       ),
     );

  }
}