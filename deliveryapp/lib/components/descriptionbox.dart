import 'package:flutter/material.dart';

class MyDescriptionBox extends StatelessWidget {
  const MyDescriptionBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.deepOrangeAccent),
      ),
      child: const Row(
        children: [
          Column(
            children: [
              Text("\50birr"),
              Text("Delivery Fee")
            ],
          ),
       Column(
            children: [
              Text("15-30min"),
              Text("Delivery time")
            ],
          )





      ],
      ),
    );
  }
}
