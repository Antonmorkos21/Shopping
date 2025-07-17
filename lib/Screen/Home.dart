import 'package:flutter/material.dart';
import 'package:shopping/Model/colors.dart';
import 'package:shopping/Screen/Registration/Signup.dart';
import 'package:shopping/Screen/Registration/SignIn.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            "Shopping",
            style: TextStyle(
              fontFamily: "Suwannaphum",
              fontSize: 30,

              color: Colors.white,
            ),
          ),
        ),

        backgroundColor: AppColors.primaryColor,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        "images/linda-xu-fUEP0djb1hA-unsplash.jpg",
                      ),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(20),
                    color: const Color.fromARGB(255, 219, 222, 210),
                  ),
                  width: 170,
                  height: 300,
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                      image: NetworkImage(
                        "https://images.unsplash.com/photo-1595950653106-6c9ebd614d3a?q=80&w=1974&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                      ),
                      fit: BoxFit.fill,
                    ),
                  ),
                  width: 170,
                  height: 300,
                ),
              ],
            ),
          ),
          const SizedBox(height: 40),
          Container(
            padding: const EdgeInsets.all(20),
            child: Text(
              "Find the best deals top products and fast delivery all in one place",
              style: TextStyle(
                fontSize: 24,
                fontFamily: "Suwannaphum",

                fontWeight: FontWeight.bold,
                color: Colors.blueGrey[800],
              ),
            ),
          ),
          const SizedBox(height: 60),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SignUp()),
                  );
                },
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 60,
                    vertical: 15,
                  ),
                  decoration: BoxDecoration(
                    color: AppColors.primaryColor,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: const Text(
                    "Sign Up",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SignIn()),
                  );
                },
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 60,
                    vertical: 15,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(color: AppColors.primaryColor, width: 2),
                  ),
                  child: const Text(
                    "Sign In",
                    style: TextStyle(
                      color: AppColors.primaryColor,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
