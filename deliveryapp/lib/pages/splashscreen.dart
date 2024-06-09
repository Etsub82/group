import 'package:flutter/material.dart';
import 'package:deliveryapp/components/button.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(//
    
     backgroundColor:const Color.fromRGBO(252, 201, 110, 1),
     body:Center(
      child: Column(
        mainAxisAlignment:MainAxisAlignment.center,
        children: [
          Image.asset(
            "lib/images/logo.jpg", height: 350,
            ),
            Container(
              margin:const EdgeInsets.only(top:50),
              child: const Text(
                "ASTU DELIVERY",
                style: TextStyle(color:Color.fromRGBO(255, 105, 97, 1.0) ,
                fontSize:35, 
                fontWeight: FontWeight.bold,
                 ),
              )
            ),
            const SizedBox(height: 40,), 
            Button(
            text: "Get Started",
            
            onTap: () {
              Navigator.pushReplacementNamed(context, '/loginpage');
            },
            )
       
            
      ],)
     )

    
    );
   
   
  }
}