import 'package:flutter/material.dart';


class Button extends StatelessWidget {
  final String text;
  final void Function()? onTap ;
 const  Button({
    super.key, 
    required this.text,
    required this.onTap,
    });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          decoration: BoxDecoration(color: const Color.fromRGBO(8, 202, 209, 1.0),
        borderRadius: BorderRadius.circular(30),  
           ),
          padding: const EdgeInsets.symmetric(horizontal: 70,vertical: 10),
          margin: const EdgeInsets.symmetric(horizontal: 34),
          child: Center(
            child: Text(
                  text,
                  style: const TextStyle(color: Colors.white,fontSize:30),
            
            
                  ),
          ),
      ),
      ),
    );
    
  }
}