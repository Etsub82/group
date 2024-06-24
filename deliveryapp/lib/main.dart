import 'package:deliveryapp/pages/homepage.dart';
import 'package:deliveryapp/pages/loginpage.dart';
import 'package:deliveryapp/pages/signup.dart';
import 'package:flutter/material.dart';
import 'package:deliveryapp/pages/splashscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
        debugShowCheckedModeBanner: false,
        home: const IntroPage(),
        routes:{
          '/intropage':(context) => const IntroPage(),
         '/loginpage':(context) => const LoginPage(),
         '/signpage':(context)=> const SignUpPage(),
         '/homepage':(context) => const HomePage()


        } ,
    )  ;

    
    
  }
} 