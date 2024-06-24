import 'package:deliveryapp/components/button.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
      resizeToAvoidBottomInset: true, // This property helps to avoid the keyboard overlapping the content
      body: SingleChildScrollView( // Wrap the body with SingleChildScrollView
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Container(
                decoration: const BoxDecoration(color: Color.fromRGBO(255, 255, 255, 1)),
                child: Image.asset(
                  "lib/images/Premium Vector _ Secure login concept illustration.jpg",
                  fit: BoxFit.fitWidth,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 1),
              child: Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                  ),
                  color: Color.fromRGBO(255, 255, 255, 1),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 35,
                    right: 35,
                    top: 35,
                  ),
                  child: Column(
                    children: [
                      const Text(
                        "SIGN UP",
                        style: TextStyle(
                          color: Color.fromRGBO(255, 105, 97, 1.0),
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 20),
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: "abc1",
                            suffixIcon: Icon(Icons.face),
                            label: Text(
                              'UserName',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color.fromRGBO(0, 0, 0, 1),
                              ),
                            ),
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 20),
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: "abc@gmail.com",
                            suffixIcon: Icon(Icons.email),
                            label: Text(
                              'Email',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color.fromRGBO(0, 0, 0, 1),
                              ),
                            ),
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 10),
                        child: TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                            hintText: '12345',
                            suffixIcon: Icon(Icons.visibility_off),
                            label: Text(
                              'Password',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color.fromRGBO(0, 0, 0, 1),
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      const Align(
                        alignment: Alignment.centerRight,
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
                          text: "Sign Up",
                          onTap: () {
                            Navigator.pushReplacementNamed(context, '/loginpage');
                          },
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pushReplacementNamed(context, '/loginpage');
                        },
                        child: const Padding(
                          padding: EdgeInsets.only(top: 20),
                          child: Align(
                            alignment: Alignment.center,
                            child: Text(
                              "Already have an account",
                              style: TextStyle(
                                color: Color.fromARGB(255, 40, 33, 243),
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
