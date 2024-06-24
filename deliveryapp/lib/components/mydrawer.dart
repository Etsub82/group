import 'package:deliveryapp/components/mydrawerlist.dart';
import 'package:deliveryapp/pages/ProfilePage.dart';
import 'package:deliveryapp/pages/loginpage.dart';
import 'package:flutter/material.dart';
import '../pages/settings_page.dart';


class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return  Drawer(
      backgroundColor:Colors.amber,
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 100.0),
            child: Icon(
              Icons.lock_open_rounded,
              size: 40,
              color:Colors.blueGrey,
            ),
          ),
          const Padding(padding: const EdgeInsets.all(25.0),
          child: Divider(
            color: Colors.grey,
          ),          
          ),

          MyDrawerList(
            text: 'Home', 
            icon: Icons.home, 
          onTap: () => Navigator.pop(context),
           
            ),
           
           
            MyDrawerList(
            text: 'Setting', 
            icon: Icons.settings, 
          onTap:  () {
             Navigator.pop(context);
             Navigator.push(
              context,
              MaterialPageRoute(
                builder:(context)=> const SettingsPage(),
                ),
             );
          },
          
            ),

            MyDrawerList(
            text: 'Profile', 
            icon: Icons.person, 
          onTap:  () {
             Navigator.pop(context);
             Navigator.push(
              context,
              MaterialPageRoute(
                builder:(context)=> const ProfilePage(),
                ),
             );
          },
          
            ),
           const  Spacer(),
            MyDrawerList(
            text: 'LogOut', 
            icon: Icons.logout, 
         onTap:  () {
             Navigator.pop(context);
             Navigator.push(
              context,
              MaterialPageRoute(
                builder:(context)=> const LoginPage(),
                ),
             );
          },
            ),
            const SizedBox(height: 25,)
      ],),
    );
  }
}