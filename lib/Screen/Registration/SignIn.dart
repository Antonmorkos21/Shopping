import 'package:flutter/material.dart';
import 'package:shopping/Model/colors.dart';
import 'package:shopping/Screen/Home.dart';
import 'package:shopping/Screen/Shopping.dart';

class SignIn extends StatefulWidget {
final GlobalKey<FormState> FKey = GlobalKey<FormState>();
  SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 360,
          child: Column(
            //crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: Text(
                  "Sign In",
                  style: TextStyle(
                    fontSize: 45,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Suwannaphum",
                    color: AppColors.primaryColor,
                  ),
                ),
              ),
              SizedBox(height: 25),

              Form(
                key: widget.FKey,
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        hintText: "Email",
                        labelText: "Email",
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your email';
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: 25),

                    TextFormField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        hintText: "Password",
                        labelText: "Password",
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your password';
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: 25),

                    Container(
                      child: GestureDetector(
                        onTap: () {
                          if (widget.FKey.currentState!.validate()) {

                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ShoppingPage()),
                            );
                          }
                        },
                        child: Container(
                          width: 360,
                          height: 50,
                          decoration: BoxDecoration(
                            color: AppColors.primaryColor,
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Center(
                            child: Text(
                              "Sign In",
                              style: TextStyle(
                                fontFamily: "Suwannaphum",
                                fontSize: 22,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 15),

                    Container(
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Home()),
                          );
                        },
                        child: Container(
                          width: 360,
                          height: 50,
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 255, 255, 255),
                            borderRadius: BorderRadius.circular(10.0),
                            border: Border.all(color: AppColors.primaryColor),
                          ),
                          child: Center(
                            child: Text(
                              "Close",
                              style: TextStyle(
                                fontFamily: "Suwannaphum",
                                fontSize: 22,
                                color: AppColors.primaryColor,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
