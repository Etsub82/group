import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MyDrawerList extends StatelessWidget {
  final String text;
  final IconData? icon;
  final void Function()? onTap;
  const MyDrawerList({
    super.key,
    required this.icon,
    required this.onTap,
    required this.text,
    });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left:20),
      child: ListTile(
        title: Text(
          text,
          style:const TextStyle(color: Colors.black)
      ),
      leading: Icon(
        icon,
        color: Colors.cyan,
      ),
      onTap: onTap,
      ),
    );
  }
}