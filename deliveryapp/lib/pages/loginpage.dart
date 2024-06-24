import 'package:deliveryapp/components/button.dart';
import 'package:flutter/material.dart';



class LoginPage extends StatefulWidget {
   
  const LoginPage({
    super.key,
    
    });

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
      body: Stack(
        children: [
         Padding(
            padding: const EdgeInsets.only(top: 20, ),
            child: Container(
              decoration:
                  const BoxDecoration(color: Color.fromRGBO(255, 255, 255, 1)),
              child: Image.asset(
                "lib/images/3775149.jpg",
                fit:BoxFit.contain,
                
              ),
            ),
          ),
         
          Padding(
            
            padding: const EdgeInsets.only(top: 350),
            child: Container(
               
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                ),
                color: Color.fromRGBO(255, 255, 255, 1),
              ),
              height: double.infinity,
              width: double.infinity,



              child: Padding(
                padding: const EdgeInsets.only(
                  left: 35,
                  right: 35,
                  top:35,
                ),
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                   const Text(
                      "LOGIN",
                      style: TextStyle(color:Color.fromRGBO(255, 105, 97, 1.0) ,
                fontSize:30, 
                fontWeight: FontWeight.bold,
                 ),
                      ),
                    const Padding(
                      padding: EdgeInsets.only(top:10),
                      child: TextField
                (
                        decoration: InputDecoration(
                            hintText: "abc@gmail.com",
                            
                            suffixIcon: Icon(Icons.email),
                            label: Text(
                              'Email',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color.fromRGBO(0, 0, 0, 1)
                              ),
                            )),
                      ),
                    ),
                     const Padding(
                       padding: EdgeInsets.only(top: 20),
                       child: TextField(
                        obscureText:true,
                        decoration: InputDecoration(
                            hintText: '12345',
                            suffixIcon: Icon(Icons.visibility_off),
                            label: Text(
                              'Password',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color.fromRGBO(0, 0, 0, 1) 
                              ),
                            )),
                                           ),
                     ),
                   const SizedBox(height:15 ,),
                   const Align(
                      alignment:Alignment.centerRight ,
                      child: Text(
                        "Forgot Password",
                        style: TextStyle(
                          color: Color.fromARGB(255, 40, 33, 243),
                          fontSize: 20,
                          ),
                        
                        ),
                      
                  
                    ),
                 Padding(
                   padding: const EdgeInsets.only(top: 10),
                   child: Button(
                    text: "Login",
                    onTap:() {
                     Navigator.pushReplacementNamed(context, '/homepage');
                    },
                   ),
                 ),
                GestureDetector(
                  onTap:() {
                    //
                  },
                  child: GestureDetector(
                    onTap:() {
                      Navigator.pushReplacementNamed(context, '/signpage');
                    },
                    child: const Padding(
                     padding: EdgeInsets.only(top: 20),
                      child:  Align(
                        alignment: Alignment.center,
                        child:Text(
                          "Don't have an account",
                          style:TextStyle(
                            color:Color.fromARGB(255, 40, 33, 243),
                            fontSize: 20,
                            ) ,
                        ),
                       ),
                    ),
                  ),
                ),
                  
                GestureDetector(
                  onTap:() {
                    //
                  },
                  child: const Padding(
                   padding: EdgeInsets.only(top: 15),
                    child:  Align(
                      alignment: Alignment.center,
                      child:Text(
                        "Enter as Guest",
                        style:TextStyle(
                          color:Color.fromARGB(255, 114, 114, 115),
                          fontSize: 17,
                          ) ,
                      ),
                     ),
                  ),
                ),

                  ],
                ),
              ),
            ),
          )
        ],


      ),
    );
  }
}
