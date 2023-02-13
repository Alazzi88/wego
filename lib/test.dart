import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:wego/color.dart';
import 'package:wego/home.dart';

class Test extends StatelessWidget {
  const Test({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
    appBar: AppBar(
      backgroundColor: black,
    ),
      body:  SizedBox(
        width: double.infinity,
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Welcome",style: TextStyle(fontSize: 33,fontFamily: "cairo",fontWeight: FontWeight.bold),),
            Image.asset("assets/img/logo.jpg"),
            ElevatedButton(
   onPressed: (){
 Navigator.push(
    context,
    MaterialPageRoute(builder: (context) =>  const Wego()),
  );
   },
   style: ButtonStyle(
     backgroundColor: MaterialStateProperty.all(const Color.fromARGB(255, 16, 13, 87)),
     padding: MaterialStateProperty.all(EdgeInsets.all(12)),
     shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(8))),
  ),
   child: SizedBox(
    width: 222,
     child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
       children: const [
        Icon(Icons.call),
        SizedBox(width: 12,),
         Text(" +9665999999", style: TextStyle(fontSize: 19,),),
        
        
       ],
     ),
   ),
),
const SizedBox(height: 33,),
 ElevatedButton(
   onPressed: (){
 Navigator.push(
    context,
    MaterialPageRoute(builder: (context) =>  const Wego()),
  );
   },
   style: ButtonStyle(
     backgroundColor: MaterialStateProperty.all(const Color.fromARGB(255, 16, 13, 87)),
     padding: MaterialStateProperty.all(EdgeInsets.all(12)),
     shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(8))),
  ),
   child: SizedBox(
    width: 222,
     child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
       children: const [
        Icon(Icons.email),
        SizedBox(width: 12,),
         Text(" Alizzi@3zzo.com", style: TextStyle(fontSize: 19,),),
         
      
       ],
     ),
   ),
),
          ],
        ),
      ),
    );
  }
}