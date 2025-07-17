import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:shopping/Screen/Registration/Forgetpass.dart';
import 'package:shopping/Screen/Home.dart';
import 'package:shopping/Screen/Registration/Signup.dart';
import 'package:shopping/Screen/Registration/SignIn.dart';
import 'package:shopping/Screen/Screen1.dart';
import 'package:shopping/Screen/Shopping.dart';

void main() => runApp(
  DevicePreview(
    enabled: true,
    builder: (context) => App(), // Wrap your app
  ),
);

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Screen1(), debugShowCheckedModeBanner: false);
  }
}
