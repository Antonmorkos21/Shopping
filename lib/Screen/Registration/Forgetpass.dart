import 'package:flutter/material.dart';
import 'package:shopping/Model/colors.dart';
import 'package:shopping/Screen/Registration/SignIn.dart';

class Forgetpass extends StatelessWidget {
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Find Your Account",
                style: TextStyle(fontSize: 30, fontFamily: "Suwannaphum"),
              ),
              SizedBox(height: 100),
              Form(
                key: formKey, // Attach the form key here
                child: Column(
                  children: [
                    Container(
                      width: 350,

                      child: Text(
                        "Please enter your email address or mobile number to search for your account.",
                        style: TextStyle(
                          fontFamily: "Suwannaphum",
                          fontSize: 15,
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Container(
                      width: 350,

                      child: TextFormField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          hintText: "Email",
                          labelText: "Email",
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Please enter your email address or mobile number to search for your account.';
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
                    ),
                    SizedBox(height: 20),
                    Container(
                      width: 350,
                      child: GestureDetector(
                        onTap: () {},
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 100,
                            vertical: 13,
                          ),
                          decoration: BoxDecoration(
                            color: AppColors.primaryColor,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Center(
                            child: const Text(
                              "Search",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Container(
                      width: 350,
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => SignIn()),
                          );
                        },
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 100,
                            vertical: 13,
                          ),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(color: AppColors.primaryColor),
                          ),
                          child: Center(
                            child: const Text(
                              "Cancel",
                              style: TextStyle(
                                color: AppColors.primaryColor,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
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
