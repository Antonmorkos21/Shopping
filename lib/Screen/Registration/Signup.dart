import 'package:flutter/material.dart';
import 'package:shopping/Model/colors.dart';
import 'package:shopping/Screen/Home.dart';
import 'package:shopping/Screen/Shopping.dart';

class SignUp extends StatefulWidget {
  final formKey = GlobalKey<FormState>();

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        //crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Container(
              child: Text(
                "Sign Up",
                style: TextStyle(
                  fontSize: 45,
                  fontWeight: FontWeight.bold,
                  fontFamily: "Suwannaphum",
                  color: AppColors.primaryColor,
                ),
              ),
            ),
          ),
          SizedBox(height: 25),

          Form(
            key: widget.formKey,
            child: Container(
              width: 360,
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      hintText: "Full Name",
                      labelText: "Full Name",
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please Enter Your Full Name';
                      }
                      const fullNamePattern = r'^[A-Z][a-z]+(?: [A-Z][a-z]+)*$';
                      final regExp = RegExp(fullNamePattern);
                      if (!regExp.hasMatch(value)) {
                        return 'First letter of each name must be uppercase';
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 25),
                  TextFormField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      hintText: "Email",
                      labelText: "Email",
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter your email';
                      }
                      const emailPattern =
                          r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$';
                      final regExp = RegExp(emailPattern);
                      if (!regExp.hasMatch(value)) {
                        return 'Please enter a valid email';
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 25),

                  TextFormField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      hintText: "Password",
                      labelText: "Password",
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter your password';
                      }
                      if (value.length < 6) {
                        return 'Password must be at least 6 characters';
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 25),
                  Container(
                    child: GestureDetector(
                      onTap: () {
                        if (widget.formKey.currentState!.validate()) {
                          showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return AlertDialog(
                                backgroundColor: Colors.white,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                title: const Text(
                                  'Account Created',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.black87,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                  ),
                                ),
                                content: const Text(
                                  'Your account has been created successfully!',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.black54,
                                    fontSize: 16,
                                  ),
                                ),
                                actions: <Widget>[
                                  Center(
                                    child: TextButton(
                                      onPressed: () {
                                        Navigator.of(context).pop();
                                        Navigator.pushReplacement(
                                          context,
                                          PageRouteBuilder(
                                            pageBuilder:
                                                (
                                                  context,
                                                  animation,
                                                  secondaryAnimation,
                                                ) => ShoppingPage(),
                                            transitionsBuilder: (
                                              context,
                                              animation,
                                              secondaryAnimation,
                                              child,
                                            ) {
                                              return FadeTransition(
                                                opacity: animation,
                                                child: child,
                                              );
                                            },
                                            transitionDuration: const Duration(
                                              milliseconds: 700,
                                            ),
                                          ),
                                        );
                                      },
                                      child: Text(
                                        'OK',
                                        style: TextStyle(
                                          color: AppColors.primaryColor,
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              );
                            },
                          );
                        }
                      },
                      child: Container(
                        width: 360,
                        height: 50,
                        child: Center(
                          child: Text(
                            "sign up",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 22,
                              fontFamily: "Suwannaphum",
                            ),
                          ),
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: AppColors.primaryColor,
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
                        child: Center(
                          child: Text(
                            "Close",
                            style: TextStyle(
                              color: AppColors.primaryColor,
                              fontSize: 22,
                              fontFamily: "Suwannaphum",
                            ),
                          ),
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: AppColors.primaryColor),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
